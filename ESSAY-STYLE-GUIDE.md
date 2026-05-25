# Silk Road Essay Style Guide

This guide is for light editorial normalization of student essay pages. The goal is to make the collection feel cohesive and readable while preserving student authorship, argument, and voice.

## Core Principle

Keep the student work recognizably student-authored. Improve the container, formatting, and readability; do not rewrite the essay into a new voice.

All essay content should be written in Markdown or use established Xanthan framework includes and patterns. Avoid raw HTML unless the project already provides a Xanthan include or layout pattern that requires it.

## Allowed Changes

- Fix Markdown formatting.
- Break up very long paragraphs into shorter units appropriate for online reading, using the student's existing transitions and topic shifts.
- Normalize heading levels, usually `##` for major sections and `###` for subsections.
- Normalize bibliography, works cited, references, or further reading headings.
- Convert footnotes to the site's Littlefoot-compatible Markdown footnote format when the intended citation is clear.
- Convert bare URLs into Markdown links when helpful.
- Fix obvious typos, repeated words, spacing problems, and broken punctuation.
- Remove duplicate blank lines or inconsistent whitespace.
- Standardize image includes, captions, and nearby spacing when the intended image/caption is clear.
- Add a neutral opening `##` section heading when an essay starts directly with body text after the page header.
- Add one pullquote when a page has none, using a short, interesting phrase or sentence from the student's existing essay text.
- Preserve front matter unless a formatting error prevents the page from working.

## Common Student Formatting Issues To Fix

- Bibliography, works cited, references, or further reading sections should be formatted as Markdown lists, with each source as its own bullet point.
- Long bibliography entries should remain one bullet point per source, even if the line wraps visually.
- Visible URLs in bibliography entries should be folded into the preceding citation text as regular Markdown links when the destination is clear, rather than left as raw URLs.
- Multiple sources run together in one paragraph should be split into separate bullet points.
- Long paragraphs should be divided where the student shifts evidence, example, chronology, place, or subtopic. Do not rewrite the prose just to make shorter paragraphs.
- Section headings should use Markdown heading syntax, not bold text standing in for a heading.
- Essays should begin with an `##` heading after the page header. If the essay starts directly with body text, add a brief neutral heading drawn from the opening paragraph's topic without inventing a new argument or changing the student's framing.
- Remove `<br>` tags immediately before headings; use normal Markdown spacing instead.
- Lists should use Markdown bullets or numbered lists, not manually typed numbers in paragraphs.
- Image placement should follow Xanthan image includes or existing project patterns, not ad hoc HTML.
- Captions should be kept close to the image they describe and formatted consistently.
- URLs in image captions should be encapsulated as a `[source](URL)` link in the caption.
- Images should not appear immediately before a heading; move the image to after the heading so the section title introduces the visual material.
- If an essay has no pullquote, look for a concise, visually interesting phrase or sentence already written by the student and place it with the pullquote component. Do not invent a new line or rewrite the student's prose for the pullquote.
- Pullquotes should not be the first thing after a heading. Keep at least two sentences of body text between a heading and a pullquote so the section has enough typographic breathing room.
- Footnotes should use the site's Littlefoot-compatible Markdown footnote format, with an inline marker such as `[^1]` and a matching footnote definition such as `[^1]: Source text`.
- Footnote markers should stay attached to the paragraph or sentence they support, not sit alone on a separate line.
- Extra blank lines, inconsistent indentation, and trailing spaces should be cleaned up.
- Object or essay links should use Markdown links or established Xanthan include patterns.
- Do not use raw HTML for layout, spacing, images, captions, or lists when Markdown or a Xanthan include can do the job.

## Avoid

- Do not rewrite thesis statements or major claims.
- Do not add new evidence, interpretation, or scholarly framing.
- Do not substantially reorder the argument.
- Do not polish every awkward phrase just to make the essays sound uniform.
- Do not remove student tone, uncertainty, or stylistic variation unless it creates a readability or formatting problem.
- Do not change citations or bibliography entries beyond formatting unless the source information is clearly broken.

## Flag Or Ask First

Ask before making a change when you encounter a nonstandard, unusual, or ambiguous issue. This includes:

- A factual claim that seems wrong but is not simply a typo.
- A citation that is missing, incomplete, or difficult to match to a source.
- A paragraph or section whose meaning is unclear.
- A quotation that may be inaccurate or missing attribution.
- An image, object, or essay link that seems mismatched.
- A section that appears duplicated but may have been intentional.
- A major structure problem that would require moving sections around.
- Any change that would alter the student's argument, evidence, or interpretive emphasis.

When in doubt, preserve the original text and leave a note or ask for direction.

## Checklist For Each Essay

- Front matter is intact and valid.
- Title, author, object links, and metadata are preserved.
- Paragraphs are sized for online reading without changing the student's argument, sequence, or voice.
- Heading levels are consistent.
- The essay begins with an `##` heading after the page header.
- Images and captions are formatted consistently.
- Each essay has a pullquote when the existing prose offers a suitable short phrase or sentence.
- Pullquotes are introduced by at least two sentences after a heading.
- Footnotes, citations, and bibliography sections are readable and consistent.
- Footnotes use the site's Littlefoot-compatible Markdown footnote format.
- Footnote markers are attached to their relevant paragraph or sentence, not isolated on separate lines.
- Bibliography-style sections use one Markdown bullet point per source.
- Content uses Markdown or established Xanthan framework patterns, not ad hoc HTML.
- Visible bibliography URLs are folded into the preceding citation text as Markdown links where appropriate.
- No new claims, sources, or interpretations have been added.
- Any unusual or ambiguous issue has been flagged instead of silently changed.
