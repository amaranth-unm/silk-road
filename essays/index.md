---
title: Essays
layout: full-width
header-title: Essays
css: essays.css
summary: A magazine-style table of contents for thematic essays on the Silk Road.
---

{% assign essays = "" | split: "" %}
{% for p in site.pages %}
  {% if p.path contains 'essays/' and p.name == 'index.md' and p.thumbnail and p.summary %}
    {% unless p.url == page.url %}
      {% assign essays = essays | push: p %}
    {% endunless %}
  {% endif %}
{% endfor %}
{% assign essays = essays | sort: "title" %}

<section class="essays-hero">
  <p class="essays-kicker">Thematic Essays</p>
  <h1>Stories of exchange, translated through objects.</h1>
  <p>The Silk Road through games, beauty, faith, violence, architecture, myth, and material culture.</p>
</section>

<section class="essays-toc" aria-label="Essay table of contents">
  <div class="essays-toc__heading">
    <p class="essays-kicker">Contents</p>
  </div>

  <div class="essays-index">
    {% for essay in essays %}
      {% include nav/essay-toc-card.html essay=essay %}
    {% endfor %}
  </div>
</section>
