---
title: The Silk Road
layout: base
date: 2026-01-24
css: home.css
summary: A visual introduction to Silk Road objects, stories, routes, and cultural exchange.

hero:
  image: /assets/images/ota-gate-khiva2.jpg
  alt: The tiled Ata Darvaza gate in Khiva, Uzbekistan
  kicker: A digital exhibition of movement, material, and myth
  title: The Silk Road Was Stranger Than Silk
  text: Games, cosmetics, dragons, glass, religion, sport, weapons, architecture, and luxury all moved through the same networks that carried silk and spice.
  buttons:
    - label: Read the Essays
      url: /essays/
    - label: Browse Objects
      url: /objects/

opening_argument:
  kicker: Opening Argument
  title: The Silk Road was not a single road, and it was not only about silk.
  text:
    - The name evokes caravans, merchants, and luxury goods crossing the breadth of the known world. The history is stranger and richer, with chess pieces changing shape, eyeliner becoming evidence of chemical exchange, dragon motifs shifting meaning from China to Persia, and buildings carrying architectural habits across empires.
    - This site follows those unexpected threads through student essays, object studies, and a growing map of cultural contact across Eurasia.

featured_essay: chess
editor_picks:
  - light
  - dragons-dinosaurs-theme
  - cosmetics

object_strip:
  - slug: wrestlers-weight
    label: Sport
  - slug: cosmetic-jar
    label: Beauty
    image: images/cosmetic-jar-with-a-lid.jpg
  - slug: bowl-with-dragons
    label: Myth
  - slug: buddha-head
    label: Faith
  - slug: bracelet-with-coral-and-carnelian
    label: Luxury
    title: "Coral & Carnelian"

reading_paths:
  - slug: chess
    label: "Games & Play"
    text: Chess, polo, sport, and competition as evidence of cultural movement.
  - slug: coral-and-carnelian
    label: Adornment
    image: images/carnelian-header.jpg
    text: Jewelry, cosmetics, dress, and the materials that made identity visible.
  - slug: greco-buddhist-art
    label: "Faith & Transformation"
    text: Images and beliefs crossing languages, regions, and artistic traditions.
  - slug: waystations-architecture
    label: "Architecture & Cities"
    text: Gateways, caravanserais, markets, and buildings that made exchange possible.

explore_links:
  - label: Thematic Essays
    url: /essays/
    text: Read the full set of thematic studies.
  - label: Material Objects
    url: /objects/
    text: Browse the coins, jars, chess pieces, weapons, textiles, and fragments.
  - label: Eurasian Map
    url: /map/
    text: See where stories and objects sit across Eurasia.
---

{% include layout/home-hero.html hero=page.hero %}
{% include layout/split-intro.html intro=page.opening_argument %}
{% include layout/feature-block.html folder=page.featured_essay cta="Follow the game" class="feature-block--full" %}
{% include layout/editor-picks.html picks=page.editor_picks %}
{% include layout/thumbnail-strip.html collection="objects" items=page.object_strip kicker="Seen Along the Road" title="Objects make the routes tangible." %}
{% include layout/visual-link-grid.html collection="essays" items=page.reading_paths kicker="Reading Paths" title="Choose a thread and follow it across cultures." %}
{% include layout/link-index.html links=page.explore_links kicker="Explore More" title="The collection keeps opening outward." %}
