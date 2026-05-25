#!/bin/bash

# Image optimization for the Silk Road site.
# Adapted from the generic Xanthan image workflow, with safer defaults for
# course projects where image filenames are referenced from Markdown.

set -u

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m'

SCRIPT_DIR="$(cd -- "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
BACKUP_ROOT="$PROJECT_ROOT/scripts/image-backups"
CONVERSION_LOG="$PROJECT_ROOT/scripts/png_to_jpg_conversions.txt"

MAX_EDGE=1800
QUALITY=85
MIN_SIZE_KB=250
TARGET_FOLDER=""
PREVIEW_MODE=false
RECURSIVE=false
CONVERT_PNG=false
BASE_DIRS=()

usage() {
    cat <<'HELP'
Silk Road image optimizer

Usage:
  bash scripts/optimize-images.sh [options]

Recommended preview:
  bash scripts/optimize-images.sh --preview

Recommended run:
  bash scripts/optimize-images.sh

Options:
  --preview           Show what would happen without changing files.
  --base-dir PATH     Directory to scan. Can be used more than once.
  --recursive         Scan all image-containing folders below each base dir.
  --folder NAME       Process one child folder within each base dir.
  --max-edge N        Limit longest image edge to N pixels. Default: 1800.
  --quality N         JPEG/WebP quality, 1-100. Default: 85.
  --min-size-kb N     Skip files smaller than this unless oversized. Default: 250.
  --convert-png       Convert non-transparent PNG files to JPG and log references.
  --help              Show this help text.

Notes:
  By default, PNG files keep their filenames. Use --convert-png only when you
  are ready to run scripts/update-image-refs.sh afterward.
HELP
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --preview)
            PREVIEW_MODE=true
            shift
            ;;
        --base-dir)
            BASE_DIRS+=("$2")
            shift 2
            ;;
        --recursive)
            RECURSIVE=true
            shift
            ;;
        --folder)
            TARGET_FOLDER="$2"
            shift 2
            ;;
        --max-edge)
            MAX_EDGE="$2"
            shift 2
            ;;
        --quality)
            QUALITY="$2"
            shift 2
            ;;
        --min-size-kb)
            MIN_SIZE_KB="$2"
            shift 2
            ;;
        --convert-png)
            CONVERT_PNG=true
            shift
            ;;
        --help)
            usage
            exit 0
            ;;
        *)
            echo -e "${RED}Unknown option: $1${NC}"
            echo "Use --help for usage."
            exit 1
            ;;
    esac
done

if [ ${#BASE_DIRS[@]} -eq 0 ]; then
    BASE_DIRS=("essays" "objects" "assets/images")
    RECURSIVE=true
fi

if command -v magick > /dev/null 2>&1; then
    MAGICK_CMD="magick"
elif command -v convert > /dev/null 2>&1; then
    MAGICK_CMD="convert"
else
    echo -e "${RED}ImageMagick is not installed.${NC}"
    echo "Install it with: brew install imagemagick"
    exit 1
fi

if ! command -v identify > /dev/null 2>&1; then
    echo -e "${RED}ImageMagick identify is not available.${NC}"
    echo "Install it with: brew install imagemagick"
    exit 1
fi

file_size_bytes() {
    stat -f%z "$1" 2>/dev/null || stat -c%s "$1" 2>/dev/null
}

human_size() {
    du -h "$1" | awk '{print $1}'
}

relative_path() {
    local path="$1"
    echo "${path#$PROJECT_ROOT/}"
}

escape_backup_path() {
    local rel="$1"
    echo "$rel" | sed 's#/#__#g'
}

image_width() {
    identify -format "%w" "$1" 2>/dev/null || echo 0
}

image_height() {
    identify -format "%h" "$1" 2>/dev/null || echo 0
}

has_transparency() {
    local file="$1"
    local alpha
    alpha=$(identify -format "%A" "$file" 2>/dev/null)

    if [[ "$alpha" != "Blend" && "$alpha" != "True" && "$alpha" != "On" ]]; then
        return 1
    fi

    local alpha_min
    alpha_min=$(identify -format "%[fx:minima.a]" "$file" 2>/dev/null)
    [[ -n "$alpha_min" ]] && awk "BEGIN { exit !($alpha_min < 1.0) }"
}

should_skip() {
    local file="$1"
    local width="$2"
    local height="$3"
    local size
    size=$(file_size_bytes "$file")
    local min_bytes=$((MIN_SIZE_KB * 1024))

    [ "$width" -le "$MAX_EDGE" ] && [ "$height" -le "$MAX_EDGE" ] && [ "$size" -lt "$min_bytes" ]
}

optimize_file() {
    local img="$1"
    local backup_stamp="$2"
    local filename
    filename=$(basename "$img")
    local extension="${filename##*.}"
    local extension_lc
    extension_lc=$(echo "$extension" | tr '[:upper:]' '[:lower:]')
    local width
    width=$(image_width "$img")
    local height
    height=$(image_height "$img")
    local size_before
    size_before=$(file_size_bytes "$img")
    local rel
    rel=$(relative_path "$img")

    if [ "$width" -eq 0 ] || [ "$height" -eq 0 ]; then
        echo -e "  ${YELLOW}Skipping unreadable image: $rel${NC}"
        return
    fi

    if should_skip "$img" "$width" "$height"; then
        echo -e "  ${GREEN}Already small enough: $rel${NC}"
        return
    fi

    if [ "$extension_lc" = "png" ] && [ "$CONVERT_PNG" = true ] && ! has_transparency "$img"; then
        local jpg_file="${img%.*}.jpg"
        local jpg_rel
        jpg_rel=$(relative_path "$jpg_file")

        if [ "$PREVIEW_MODE" = true ]; then
            echo -e "  ${PURPLE}Would convert PNG to JPG: $rel -> $jpg_rel${NC}"
            return
        fi

        mkdir -p "$BACKUP_ROOT/$backup_stamp"
        cp "$img" "$BACKUP_ROOT/$backup_stamp/$(escape_backup_path "$rel")"
        $MAGICK_CMD "$img" -auto-orient -resize "${MAX_EDGE}x${MAX_EDGE}>" -quality "$QUALITY" -strip "$jpg_file"
        rm "$img"
        echo "$rel -> $jpg_rel" >> "$CONVERSION_LOG"

        local size_after
        size_after=$(file_size_bytes "$jpg_file")
        local saved=$((size_before - size_after))
        echo -e "  ${YELLOW}Converted:${NC} $rel -> $jpg_rel"
        echo -e "    $(human_size "$BACKUP_ROOT/$backup_stamp/$(escape_backup_path "$rel")") -> $(human_size "$jpg_file") saved $((saved / 1024)) KB"
        return
    fi

    if [ "$PREVIEW_MODE" = true ]; then
        echo -e "  ${PURPLE}Would optimize:${NC} $rel (${width}x${height}, $(human_size "$img"))"
        return
    fi

    mkdir -p "$BACKUP_ROOT/$backup_stamp"
    cp "$img" "$BACKUP_ROOT/$backup_stamp/$(escape_backup_path "$rel")"

    local tmp="$img.tmp"
    $MAGICK_CMD "$img" -auto-orient -resize "${MAX_EDGE}x${MAX_EDGE}>" -quality "$QUALITY" -strip "$tmp"
    mv "$tmp" "$img"

    local size_after
    size_after=$(file_size_bytes "$img")

    if [ "$size_after" -gt "$size_before" ]; then
        cp "$BACKUP_ROOT/$backup_stamp/$(escape_backup_path "$rel")" "$img"
        echo -e "  ${GREEN}Kept original; optimized file was larger:${NC} $rel"
        return
    fi

    local saved=$((size_before - size_after))
    echo -e "  ${YELLOW}Optimized:${NC} $rel"
    echo -e "    $(human_size "$BACKUP_ROOT/$backup_stamp/$(escape_backup_path "$rel")") -> $(human_size "$img") saved $((saved / 1024)) KB"
}

process_dir() {
    local dir="$1"
    local backup_stamp="$2"

    if [ ! -d "$dir" ]; then
        echo -e "${YELLOW}Skipping missing directory: $dir${NC}"
        return
    fi

    echo -e "${BLUE}Scanning $(relative_path "$dir")${NC}"

    while IFS= read -r img; do
        optimize_file "$img" "$backup_stamp"
    done < <(find "$dir" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) | sort)
}

echo -e "${GREEN}=== Silk Road Image Optimizer ===${NC}"
echo "Max edge: $MAX_EDGE px"
echo "Quality: $QUALITY"
echo "Skip below: $MIN_SIZE_KB KB unless oversized"
echo "Convert PNG: $CONVERT_PNG"
echo "Preview: $PREVIEW_MODE"
echo "Recursive: $RECURSIVE"
echo ""

BACKUP_STAMP=$(date +%Y%m%d-%H%M%S)

if [ "$PREVIEW_MODE" = false ]; then
    rm -f "$CONVERSION_LOG"
fi

for base_dir in "${BASE_DIRS[@]}"; do
    if [[ "$base_dir" != /* ]]; then
        base_dir="$PROJECT_ROOT/$base_dir"
    fi

    if [ -n "$TARGET_FOLDER" ]; then
        process_dir "$base_dir/$TARGET_FOLDER" "$BACKUP_STAMP"
    elif [ "$RECURSIVE" = true ]; then
        while IFS= read -r image_dir; do
            [[ "$image_dir" == "$BACKUP_ROOT"* ]] && continue
            [[ "$image_dir" == *"/_site/"* ]] && continue
            process_dir "$image_dir" "$BACKUP_STAMP"
        done < <(find "$base_dir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -not -path "*/_site/*" -not -path "*/.git/*" -exec dirname {} \; | sort -u)
    else
        process_dir "$base_dir" "$BACKUP_STAMP"
    fi
done

echo ""
echo -e "${GREEN}=== Done ===${NC}"

if [ "$PREVIEW_MODE" = true ]; then
    echo "Preview only. No files were changed."
elif [ -f "$CONVERSION_LOG" ]; then
    echo "PNG-to-JPG conversions were logged at scripts/png_to_jpg_conversions.txt."
    echo "Run: bash scripts/update-image-refs.sh"
else
    echo "Backups are in scripts/image-backups/$BACKUP_STAMP."
fi
