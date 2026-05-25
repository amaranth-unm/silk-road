# Silk Road Image Optimization

This folder contains a simple image workflow adapted from the more generic Xanthan scripts. It is meant for course iterations where students add new object and essay images in Markdown folders.

## Why Optimize

Student projects often accumulate large phone photos, screenshots, and downloaded images. Optimizing them keeps the site faster, makes GitHub Pages easier to work with, and reduces the size of the repository for future classes.

## Recommended Workflow

Install ImageMagick if it is not already available:

```bash
brew install imagemagick
```

Always preview first:

```bash
bash scripts/optimize-images.sh --preview
```

If the preview looks reasonable, run the optimizer:

```bash
bash scripts/optimize-images.sh
```

The default scan includes `essays/`, `objects/`, and `assets/images/` recursively. The default settings resize images so the longest edge is no more than `1800px`, use image quality `85`, and skip files smaller than `250 KB` unless they are oversized. Original files are copied into `scripts/image-backups/` before changes are made.

## PNG to JPG Conversion

By default, PNG files keep their filenames. This avoids breaking Markdown references.

If the site contains many large PNG files that do not need transparency, you can convert non-transparent PNGs to JPG:

```bash
bash scripts/optimize-images.sh --convert-png
```

Then update references:

```bash
bash scripts/update-image-refs.sh
```

After that, review changes carefully:

```bash
git diff
```

## Course Maintenance Checklist

1. Add or revise student content in `essays/` and `objects/`.
2. Run the preview command.
3. Run the optimizer.
4. If you used `--convert-png`, run `scripts/update-image-refs.sh`.
5. Preview the site locally and spot-check image-heavy pages.
6. Commit the optimized images and any updated references.
7. Delete old backup folders in `scripts/image-backups/` once the site is confirmed.

## When to Change Settings

Use a larger max edge for images where zooming or close visual inspection matters:

```bash
bash scripts/optimize-images.sh --base-dir objects --recursive --max-edge 2200
```

Use a smaller max edge for purely decorative images:

```bash
bash scripts/optimize-images.sh --base-dir assets/images --recursive --max-edge 1400
```

Keep the process simple for students: Markdown and Xanthan site files should remain the source of truth, and generated backups should not become part of the course content.
