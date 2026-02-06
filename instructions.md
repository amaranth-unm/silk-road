---
title: Silk Road Instructions for Students
layout: base
---

# Getting Started with Your Class Project Site

**Welcome!** This page guides you through setting up your own project folder in the repository you have copied as a clone of the Silk Road repository made by Amaranth. Once you've created your folder and added your first page, **you can delete this file**—it's just here to help you get started.

## What You Have

Amaranth has already set up this template with:
- A **homepage** that introduces class projects (`index.md`)
- **Sample essay folders** that show what a finished project looks like
- An **essays folder** where you'll add your own thematic essay
- An **objects folder** where you'll add information for your four objects
- All the styling and design already done for you

## Quick Start: Your First Steps

### Step 1: Open the Code Editor in Your Browser

The easiest way to edit your site is using GitHub's built-in code editor. **No need to download anything!**

1. Go to your repository on GitHub
2. Press the **`.` (period) key** on your keyboard
   - This opens the code editor in your browser
   - You'll see all your files on the left side
3. You're now ready to edit!


### Step 2: Create Your Thematic Essay Folder

Your project needs its own folder. Here's how:

1. In the sidebar of the Code Editor, click on the `essays/` folder
2. Right-click to open the menu and select **Copy**
3. Right-click again on the `essays/` folder and select **Paste**
4. Rename that folder using **kebab-case** (lowercase with hypens, no spaces)
   - ✅ Good examples: `great-fermentation-debate`, `pigeon-conspiracy`, `hot-dog-sandwich`
   - ❌ Bad examples: `Great Fermentation Debate` (spaces), `GreatFermentationDebate` (not uncapitalized, no hyphens)


**What your folder structure will look like:**
```
essays/
├── your_thematic_essay_title/
│   ├── images/           (create this next)
│   └── index.md          (create this next)
```


### Step 3: Create an Images Folder

Inside your new project folder, you need a folder for images:

1. Right-click on your new folder (e.g., `your-project-name/`)
2. Select **"New Folder"**
3. Name it `images`
4. Press Enter


### Step 4: Copy a Sample Index File

Now you need to create your first essay page. You can copy from one of the samples:

1. Look in the `essays/` folder—you'll see sample folders
2. Open one of them and find the `index.md` file inside
3. **Copy the entire contents** (select all the text and copy)
4. Right-click on your project folder and select **"New File"**
5. Name it `index.md`
6. **Paste the sample content** into your new file
7. Save it (Ctrl+S or Cmd+S)

### Step 5: Repeat the above steps for your four objects

1. Look in the `objects/` folder—you'll see sample folders
2. Create a new folder for each of your four objects (remember the naming conventions)
3. Inside each of those four folders, create a single folder named `images`
4. For each of your four object folders, create an `index.md` file inside
5. Paste in sample content, just like you did for your thematic essay folder

Now you have a starting point! You can edit these `index.md` files to add your own title, introduction, and content.


## Your First Edits

### Update the Front Matter (Top of Your File)

At the very top of `index.md`, you'll see something like:

```yaml
---
author: student name
title: "Your Title"
layout: scrollstory
header-image: images/han-coin-two-sides-mahogany.png
thumbnail: images/han-coin-mahogany.png
summary: The image is of the Han coin, not the monastery relic.
geo: [31.777, 35.224]
placename: Jerusalem
tags:
  - object
---
```

1. Change the `author` to to your name. 
2. Change the `title` to match your actual project.
3. Do not change the `layout`.
4. Once you have images, you can change `header-image` and `thumbnail`.
5. For `summary` write a short sentence that will appear in the little card for the file.
6. For each object file, go to Google Maps and right-click on a location to get its coordinates. Then replace the numbers in `geo`.
7. For each object file, replace the `placename`.
8. Add at least three keywords for your `tags` by replacing the word `object` and adding to the list by typing a hyphen to the left of each new keyword.


### Add Your Content

Below the `---` lines, replace the sample content with your own writing, analysis, images, etc. Keep the same structure and formatting.


### Add Your Images

1. In the code editor, right-click on your `images/` folder
2. Select **"Upload..."** and choose image files from your computer
3. Once uploaded, you can reference them in your `index.md` file by copy-pasting code such as in the following example:

```
{%raw%}
{% include images/figure.html
  class="right"
  width="40%"
  caption="What a nice view"
  alt-text="Color photograph showing some hiking trails in a canyon of the Sandia foothills."
  image-path="/assets/images/backgrounds/hike-1.jpg"
%}
{%endraw%}
```

**Image naming tips:**
- Use **lowercase only** (no capitals)
- Use **hyphens** between words, not spaces (e.g., `band-photo.jpg` not `band photo.jpg`)
- Make names **descriptive** (e.g., `stage-setup.jpg` instead of `photo1.jpg`)


## Editing Your Files

### How to Make Changes

1. Open the code editor in your browser (press `.` key)
2. Click the file you want to edit in the left sidebar
3. Type to make changes
4. Press **Ctrl+S** (or **Cmd+S** on Mac) to save
5. Your changes appear on your website automatically!


### Using Markdown

You don't need to know HTML! Just use simple **markdown** formatting:

```markdown
# This is a heading (H1)

## This is a subheading (H2)

**This text is bold**

*This text is italic*

[This is a link](https://example.com)

- Bullet point 1
- Bullet point 2
- Bullet point 3
```

**Tip:** Look at the sample pages in the `essays/` folder to see examples of markdown you can copy!


## Need Help?

### Ask Your Instructor

If something breaks or doesn't work:
- Email the helpful staff at [Amaranth](mailto:amaranth@unm.edu)
- Tell them what you were trying to do
- Share a screenshot if helpful


### Use AI Tools

You can ask AI assistants like Claude or ChatGPT:
- "How do I add an image to my markdown file?"
- "How do I add a new section to my essay?"
- "What's wrong with this code?" (paste your code and the error)
- "Can you write this text in markdown format?"


### Check the Xanthan Docs

For more advanced features:
- Browse the `/docs/` folder in your repository
- Visit [xanthan-web.github.io/xanthan/docs/](https://xanthan-web.github.io/xanthan/docs/)


## When You're Ready to Clean Up

Once you understand how to edit your site and you're happy with your project:

1. **Delete this file** (`instructions.md`)
   - Right-click it in the code editor and select "Delete"
2. **Remove it from navigation** (if your instructor set that up)
3. Keep your project folder and start adding your real content!


---

{: .text-center .text-muted}
**Questions?** Ask your instructor or check the [Xanthan documentation](https://xanthan-web.github.io/).
