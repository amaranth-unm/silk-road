---
author: student name
title: "Relic from Monastery"
layout: base
header-image: images/han-coin-two-sides-mahogany.png
thumbnail: images/han-coin-mahogany.png
summary: The image is of the Han coin, not the monastery relic.
geo: [31.777, 35.224]
placename: Jerusalem
tags:
  - object
---

# A Monastery and Not a Coin

This essay demonstrates the **simplest approach**. It uses only basic components: section headings, images with captions, pull quotes, and footnotes. No background switching, no side-scrolling—just straightforward digital storytelling that's more visually engaging than a standard web page.

The text below is mostly filler to show how an essay flows, but we'll call out key features as you encounter them.


## Your First Section Heading
{% include images/figure.html
class="right"
width="48%"
caption="This is a right-aligned image that takes up roughly half the page width. Notice how text wraps around it naturally. [Source](https://en.wikipedia.org/wiki/File:Eastern_Han_ingot_imprints_with_barbarous_Greek_inscriptions.jpg)"
image-path="images/han-coin-mahogany.png"
%}

This paragraph sits next to a **right-aligned image**. The ScrollStory layout gives images breathing room—you'll never see cramped text squished against a photo. The spacing and typography are designed to feel more like a magazine than a typical web page.

Notice the caption below the image includes a clickable source link. This is how you maintain scholarly rigor while keeping the visual design clean.[^randomthing]

[^randomthing]:Put your source information here.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pretium, nibh vel posuere pretium, neque ipsum maximus libero, ac maximus quam ante sit amet dolor. Integer pharetra semper sem sed sagittis. Curabitur mauris tortor, elementum non felis id, hendrerit efficitur metus.

Sed efficitur leo in magna pretium, euismod malesuada risus interdum. Proin sed libero et enim pulvinar convallis non eget est. Sed ultrices dui vitae enim semper accumsan.[^anotherrandomthing]

[^anotherrandomthing]:Put your next footnote source information here.


## Section Headings Create Visual Breaks
Each section heading (marked with `##` in Markdown) creates a clear visual break in your essay. This helps readers navigate long-form content and gives you natural places to shift topics or introduce new ideas.

**Why this matters:** Breaking essays into clear sections makes writing more manageable. Write one section at a time, preview it, then move to the next. No need to tackle the entire essay at once.

Praesent sed vehicula velit, vel hendrerit neque. Vivamus scelerisque sed nunc nec congue. Curabitur sapien risus, finibus id tincidunt iaculis, porta et ipsum. Cras eu mollis sapien. Sed a mauris finibus orci molestie mollis.


## Pull Quotes Add Emphasis
Pellentesque viverra hendrerit sapien eu consequat. Curabitur leo ante, vestibulum a tincidunt eget, placerat eu nunc. Donec ut sem mi. Vivamus commodo nec sem eget pretium. Nulla ullamcorper volutpat venenatis.

{% include typography/aside.html class="right" text="
This is a pull quote—a design element that highlights important text or quotations. It appears as a semi-transparent box to the right of your main text. Use these sparingly for maximum impact." %}

The pull quote you just saw is created with a simple `include` command in Markdown. It's one of many reusable components in Xanthan. You can put important quotes, key statistics, or memorable phrases in these boxes to create visual interest and emphasize crucial points.

Duis eros odio, fringilla et pulvinar vitae, eleifend quis elit. Sed eleifend lectus in bibendum elementum. Vivamus ut velit dignissim, cursus libero nec, commodo orci. Morbi lacus metus, posuere ut pretium ac, malesuada id ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat, lacus id blandit ornare, mi nisi rutrum ante, vitae dignissim mauris nisl mattis nisl.

## Images Can Be Different Widths
{% include images/figure.html class="right" width="60%" caption="This image is set to 60% width instead of 48%, giving it more prominence. You can adjust image widths to suit your content. [Source](https://en.wikipedia.org/wiki/File:Eastern_Han_ingot_imprints_with_barbarous_Greek_inscriptions.jpg)" image-path="images/han-coin-two-sides-mahogany.png" %}

The image to the right is **wider than the previous one** (60% instead of 48%). You control this with the `width` parameter in the image code. Want a small image? Use 30%. Want something that dominates? Try 70%.

Images can also be left-aligned (use `class="left"`) or centered full-width (we'll show that in more advanced essays). For Seedling level, right-aligned images at 48-60% width work well for most purposes.

Duis vehicula erat et diam pharetra iaculis. Etiam rutrum scelerisque nunc, ut interdum justo pellentesque sit amet. Vivamus cursus massa mauris, a finibus felis laoreet quis. Integer vel molestie neque.

---

## Bibliography

- Lastname, Firstname. “Title of the Article.” *Title of the Journal* 9, no. 9 (1999): 999–999.
- Lastname, Firstname. *Title of the Book*. Publisher Press, 1999.