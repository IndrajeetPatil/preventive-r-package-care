---
version: alpha
name: Preventive Care for R Packages
description: >-
  Sustainable R package maintenance presentation design: clean white canvas,
  signature violet link and diagram accent, designated mint-green overview
  cards, and full-width tables.
colors:
  primary: "#9753b8"
  secondary: "#a9f5a9"
  bg-canvas: "#ffffff"
  text: "#222222"
  muted: "#666666"
  accent-purple: "#9753b8"
  card-mint: "#a9f5a9"
  card-lavender: "#f3ccff"
  card-amber: "#fec868"
  card-gold: "#ffd56f"
  card-peach: "#ffdca9"
  card-yellow: "#fffbc1"
typography:
  display:
    fontFamily: News Cycle, Impact, sans-serif
    fontSize: 2.1em
    fontWeight: 700
  heading:
    fontFamily: News Cycle, Impact, sans-serif
    fontSize: 1.4em
    fontWeight: 700
  body:
    fontFamily: News Cycle, sans-serif
    fontSize: 32px
    fontWeight: 400
  mono:
    fontFamily: monospace
rounded:
  sm: 4px
  pill: 25px
components:
  page:
    backgroundColor: "{colors.bg-canvas}"
    textColor: "{colors.text}"
  link:
    color: "{colors.accent-purple}"
  card-mint:
    backgroundColor: "{colors.card-mint}"
    rounded: "{rounded.pill}"
    padding: 20px
  card-lavender:
    backgroundColor: "{colors.card-lavender}"
    rounded: "{rounded.pill}"
    padding: 20px
---

# DESIGN.md

The visual design specification of the Preventive Care for R Packages presentation deck.

## Overview

The visual design is structured around clean, sustainable software engineering principles on a light presentation canvas. It uses the RevealJS `simple` theme, enriched with a signature royal violet link and diagram accent (`#9753b8`), designated mint green section-overview cards (`#a9f5a9`), and structured full-width comparison tables.

The presentation format is Quarto RevealJS (`theme: simple`). Custom styles are defined in `style.css` and mirrored in the front matter above.

## Colours

- **Canvas & Typography:**
  - `bg-canvas` (`#ffffff`): Default clean white background across all slides.
  - `text` (`#222222`): Standard high-contrast body text.
  - `muted` (`#666666`): Slide footer text and metadata.
- **Brand & Link Accent:**
  - `accent-purple` (`#9753b8`): Hyperlinks, hover states, and Mermaid flowchart connector lines and arrow markers.
- **Section Overview & Emphasis Backings:**
  - `card-mint` (`#a9f5a9`): Designated background for section-overview containers across the package maintenance lifecycle.
  - `card-lavender` (`#f3ccff`): Context-loading and introductory takeaway backing.
  - `card-amber` (`#fec868`) / `card-gold` (`#ffd56f`) / `card-peach` (`#ffdca9`): Occasional high-priority takeaways.
  - `card-yellow` (`#fffbc1`): High-level checklist and goal highlights.

## Typography

- **Headings & Body:** Default clean sans-serif stack from RevealJS `simple` (`News Cycle`, `Impact`, sans-serif).
- **Code:** Monospace stack for R function signatures, package configuration files, GitHub Actions workflows, and lintr rules.

## Layout & Components

- **Section Overview Cards:** Fenced divs styled with `background-color: #a9f5a9; padding: 20px; border-radius: 25px;`.
- **Callouts vs Cards:** Real takeaways, tips, and caveats must use native Quarto callouts (`.callout-tip`, `.callout-note`, `.callout-important`) with a `##` heading inside. Do not build pseudo-callouts using pastel divs or 💡 emoji spans.
- **Tables:** When narrow Markdown tables need to span a full column width, wrap them in `::: {.fill-width}`.
- **Title Slide:** Features the watering-can preventive care artwork with `.nostretch` and `out-height: 390px` to maintain stable proportions in scroll view.
- **Icons:** SVG mask icons (`.deck-icon`) using Font Awesome Free paths rendered in `currentColor`.

## Do's and Don'ts

- **Do** retain `theme: simple` in `index.qmd` front matter.
- **Do** use `#9753b8` for links and custom diagram accents.
- **Do** use native Quarto callouts for technical warnings and best practices.
- **Don't** proliferate ad-hoc colored background divs; reserve pastel containers for section overviews.
