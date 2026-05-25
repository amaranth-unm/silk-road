#!/bin/bash

# Updates Markdown/YAML/HTML references after optimize-images.sh converts
# non-transparent PNG files to JPG.

set -u

SCRIPT_DIR="$(cd -- "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
CONVERSION_LOG="$PROJECT_ROOT/scripts/png_to_jpg_conversions.txt"

if [ ! -f "$CONVERSION_LOG" ]; then
    echo "No conversion log found at scripts/png_to_jpg_conversions.txt."
    echo "Run optimize-images.sh with --convert-png first."
    exit 1
fi

ruby - "$PROJECT_ROOT" "$CONVERSION_LOG" <<'RUBY'
require "pathname"

project_root = ARGV.fetch(0)
conversion_log = ARGV.fetch(1)

conversions = File.readlines(conversion_log, chomp: true).filter_map do |line|
  old_path, new_path = line.split(" -> ", 2)
  next unless old_path && new_path

  [old_path, new_path]
end

extensions = %w[.md .markdown .html .yml .yaml .json .js .css]
skip_dirs = %w[.git _site scripts/image-backups]

changed = []

Dir.chdir(project_root) do
  files = Dir.glob("**/*", File::FNM_DOTMATCH).select do |path|
    next false unless File.file?(path)
    next false unless extensions.include?(File.extname(path))
    next false if skip_dirs.any? { |skip| path == skip || path.start_with?("#{skip}/") }

    true
  end

  files.each do |path|
    before = File.read(path)
    after = before.dup
    file_dir = File.dirname(path)

    conversions.each do |old_path, new_path|
      old_relative = Pathname.new(old_path).relative_path_from(Pathname.new(file_dir)).to_s
      new_relative = Pathname.new(new_path).relative_path_from(Pathname.new(file_dir)).to_s
      old_same_dir = old_relative.delete_prefix("./")
      new_same_dir = new_relative.delete_prefix("./")

      after.gsub!(old_path, new_path)
      after.gsub!("/#{old_path}", "/#{new_path}")
      after.gsub!(old_relative, new_relative)
      after.gsub!(old_same_dir, new_same_dir)
    end

    next if after == before

    File.write(path, after)
    changed << path
  end
end

if changed.empty?
  puts "No references needed updating."
else
  puts "Updated references in:"
  changed.each { |path| puts "  #{path}" }
end
RUBY

echo ""
echo "Review the changes with: git diff"
