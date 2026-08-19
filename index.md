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

editor_picks:
  - slug: light
  - slug: dragons-dinosaurs-theme
  - slug: cosmetics

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

# A reading path is named for the thread it follows, not for the essay it opens
# with, so each one overrides the essay's own title.
reading_paths:
  - slug: chess
    title: "Games & Play"
    text: Chess, polo, sport, and competition as evidence of cultural movement.
  - slug: coral-and-carnelian
    title: Adornment
    image: images/carnelian-header.jpg
    text: Jewelry, cosmetics, dress, and the materials that made identity visible.
  - slug: greco-buddhist-art
    title: "Faith & Transformation"
    text: Images and beliefs crossing languages, regions, and artistic traditions.
  - slug: waystations-architecture
    title: "Architecture & Cities"
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

{% include layout/feature-block.html
  collection="essays"
  slug="chess"
  label="Featured Essay"
  cta="Follow the game"
%}

{% include layout/picks.html
  items=page.editor_picks
  collection="essays"
  variant="feature"
  kicker="Editor's Picks"
  title="Start with the strange, vivid stories."
%}

{% include layout/picks.html
  items=page.object_strip
  collection="objects"
  variant="strip"
  kicker="Seen Along the Road"
  title="Objects make the routes tangible."
%}

{% include layout/picks.html
  items=page.reading_paths
  collection="essays"
  variant="tiles"
  kicker="Reading Paths"
  title="Choose a thread and follow it across cultures."
%}

{% include layout/link-index.html
  links=page.explore_links
  kicker="Explore More"
  title="The collection keeps opening outward."
%}
