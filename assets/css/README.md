# Silk Road CSS Structure

This folder separates the site's visual system into a few teaching-friendly layers.

## Core Brand Files

- `base.css`: brand tokens, font imports, layout primitives, shared utilities, image positioning, and Bootstrap color overrides.
- `typography.css`: global prose typography, links, captions, code blocks, pullquotes, asides, and mobile text rules.
- `components.css`: reusable display components, such as buttons, feature blocks, galleries, map embeds, carousels, and legacy hero/jumbotron patterns.
- `nav.css`: the institutional microbar, main navigation, footer, breadcrumbs, and navigation-adjacent styles.

## Page-Specific Files

These files should stay small. They compose reusable components into page layouts.

- `home.css`: homepage layout and homepage-only sections.
- `essays.css`: the magazine-style essay table of contents.
- `objects.css`: the full-width object mosaic gallery.
- `map.css`: full-viewport layout rules for the map page.

## Conditional / Teaching Files

These are not loaded everywhere.

- `cards.css`: documentation/demo card components. Loaded for pages in `docs/`.
- `nav-left.css`: sidebar navigation demo layout. Loaded only by `layout: nav-left`.
- `nav-profile.css`: profile sidebar demo layout. Loaded only by `layout: nav-profile`.
- `scrollstory.css`: cinematic scrollstory layout. Loaded only by `layout: scrollstory`.

## Theme Examples

These are retained as examples for teaching, but they are not part of the active Silk Road brand.

- `simple-theme.css`
- `terra-cotta.css`
- `dark-energy.css`

## Rule of Thumb

Put reusable display patterns in `components.css`. Put page-specific arrangement in the page CSS file. Avoid fixing a component by adding one-off overrides to a page file unless the page truly needs a special variant.
