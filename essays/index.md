---
title: Essays
layout: base
header-title: Essays
---

# Thematic Essays

{% assign filtered = "" | split: "" %}
{% for p in site.pages %}
  {% if p.path contains 'essays/' %}
    {% unless p.path contains 'objects' %}
      {% assign filtered = filtered | push: p %}
    {% endunless %}
  {% endif %}
{% endfor %}
{% include nav/card-grid.html cards=filtered %}
