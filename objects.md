---
title: Objects
layout: full-width
header-title: Objects
css: objects.css
---

# Material Objects of the Silk Road

{% assign all_pages = site.pages %}
{% assign cards = all_pages | where_exp: "p", "p.path contains 'objects/'" %}

<div class="objects-grid-bleed">
  {% include gallery-view.html cards=cards %}
</div>
