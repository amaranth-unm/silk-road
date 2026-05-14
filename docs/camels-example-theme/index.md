---
author: student name
title: "Camels on the Silk Road Trade Network"
layout: base
header-image: images/ota-gate-khiva2.jpg
thumbnail: images/ota-gate-demo-gray.png
summary: In the premodern era, camels were key to the functioning of the Silk Road Trade Network.
---

# Example Thematic Essay

This essay demonstrates the **simplest approach**. It uses only basic components: section headings, images with captions, pull quotes, and footnotes. No background switching, no side-scrolling—just straightforward digital storytelling that's more visually engaging than a standard web page. In the Amaranth documentation for website building, this type of essay is called a **Seedling.**

The text below is mostly filler to show how an essay flows, but we'll call out key features as you encounter them.


## Your First Section Heading
{% include images/figure.html
class="right"
width="48%"
caption="This is a right-aligned image that takes up roughly half the page width. Notice how text wraps around it naturally. [Source](https://commons.wikimedia.org/wiki/File:Khiva_town_of_The_Silk_Road_(%D0%9A%D0%B0%D1%80%D0%B0%D0%B2%D0%B0%D0%BD,_%D0%98%D1%87%D0%B0%D0%BD_%D0%9A%D0%B0%D0%BB%D0%B0,_%D0%A5%D0%B8%D0%B2%D0%B0).jpg)"
image-path="images/ota-gate-khiva.jpg"
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
{% include images/figure.html class="right" width="60%" caption="This image is set to 60% width instead of 48%, giving it more prominence. You can adjust image widths to suit your content.  [Source](https://commons.wikimedia.org/wiki/File:Khiva_town_of_The_Silk_Road_(%D0%9A%D0%B0%D1%80%D0%B0%D0%B2%D0%B0%D0%BD,_%D0%98%D1%87%D0%B0%D0%BD_%D0%9A%D0%B0%D0%BB%D0%B0,_%D0%A5%D0%B8%D0%B2%D0%B0).jpg)"
image-path="images/ota-gate-khiva.jpg" %}

The image to the right is **wider than the previous one** (60% instead of 48%). You control this with the `width` parameter in the image code. Want a small image? Use 30%. Want something that dominates? Try 70%.

Images can also be left-aligned (use `class="left"`) or centered full-width (we'll show that in more advanced essays). For Seedling level, right-aligned images at 48-60% width work well for most purposes.

Duis vehicula erat et diam pharetra iaculis. Etiam rutrum scelerisque nunc, ut interdum justo pellentesque sit amet. Vivamus cursus massa mauris, a finibus felis laoreet quis. Integer vel molestie neque.


## The Rhythm of an Essay on a Webpage
By now you've scrolled through several sections and noticed the **rhythm** of a ScrollStory: heading, text, image, text, pull quote, text. This creates a visual cadence that keeps readers engaged without overwhelming them.

**For your own essay:** Think about pacing. Where do readers need a visual break? Where should an image reinforce your argument? When does a pull quote emphasize a key point? These decisions make the difference between a wall of text and an engaging narrative.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pretium, nibh vel posuere pretium, neque ipsum maximus libero, ac maximus quam ante sit amet dolor. Integer pharetra semper sem sed sagittis. Aliquam in sapien mauris. Aliquam erat volutpat.

Nunc congue ultrices lacus, a efficitur massa pulvinar at. Sed luctus orci sed sem commodo, in rhoncus orci sagittis. Duis in sagittis arcu. Donec dictum aliquam congue. Nulla varius ipsum vitae nibh dapibus, et tincidunt turpis gravida.


## Block Quotes for Extended Quotations
Sed efficitur leo in magna pretium, euismod malesuada risus interdum. Proin sed libero et enim pulvinar convallis non eget est. Sed ultrices dui vitae enim semper accumsan. Duis quis aliquam nulla. Aenean scelerisque lacus vel pretium viverra.

> This is a block quote, created by putting a `>` symbol before your text. Use these for extended quotations from primary sources, scholarly works, or historical documents. They're visually distinct from pull quotes—block quotes span the full text width, while pull quotes float to the side.

Block quotes work well when you want to quote an entire paragraph or passage, while pull quotes are better for short, punchy excerpts you want to highlight visually.


## What You've Learned So Far
If you can create this Seedling essay, you can:
- Structure content with section headings
- Add images with captions and source links
- Include footnotes for citations
- Use pull quotes for emphasis
- Format block quotes for extended quotations
- Control image sizes and placement

**That's enough to create compelling digital scholarship.** The Sapling and Forest essays add more sophisticated features, but this foundation works for most student projects and many professional ones too.

Duis eros odio, fringilla et pulvinar vitae, eleifend quis elit. Sed eleifend lectus in bibendum elementum. Vivamus ut velit dignissim, cursus libero nec, commodo orci. Morbi lacus metus, posuere ut pretium ac, malesuada id ligula.

---

## Bibliography

- Lastname, Firstname. “Title of the Article.” *Title of the Journal* 9, no. 9 (1999): 999–999.
- Lastname, Firstname. *Title of the Book*. Publisher Press, 1999.