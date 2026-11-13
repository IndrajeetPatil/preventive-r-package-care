# AGENTS.md

A single-page [Quarto](https://quarto.org/) presentation rendered to
[RevealJS](https://revealjs.com/) slides and deployed as a static site via
GitHub Pages. The `justfile` lists the commands; `just render` must succeed
before you push. CI renders with `options(warn = 2)`, so any R warning fails
the build.

## Key conventions

- **Single-file deck.** All slides live in `index.qmd`; do not split it.
- **Design specification.** The visual design follows [DESIGN.md](DESIGN.md).
  Respect it when creating or modifying slides, components, styling, colours,
  and typography. Restyle through `style.css`. Inline `style` backgrounds on
  fenced divs reuse colours already defined in `DESIGN.md` and `index.qmd`; do
  not invent new ones. New widgets follow the naming patterns already in
  `style.css`.
- **Table width.** Markdown tables size to their content, so a short table
  looks stranded in a wide column. Wrap it in `::: {.fill-width}` to fill the
  column instead. This is opt-in by design; do not make it global.
- **Callouts, not coloured cards.** Takeaways, tips, and caveats use Quarto
  callouts (`.callout-tip`, `.callout-note`, `.callout-important`) with a `##`
  heading inside. Coloured background divs are reserved for the `#A9F5A9`
  section-overview boxes and a few one-off emphasis cards; do not build
  pseudo-callouts out of pastel divs or 💡 emoji spans.
- **Section rhythm.** Every content section opens with
  `# Section {#anchor}` and a one-line "Preventive care …" tagline, an
  attributed quote slide, and a
  `# <span class="visually-hidden">…</span> {#section-N}` overview slide
  wrapping the green box. Each also has a `## Checklist for … {.smaller}`
  slide in the early checklist run. Match this when adding a section. Beyond
  that, sections deliberately differ: `# Make sure ….` dividers appear only in
  documentation and code quality, dependency management has a single
  differently worded divider, and the red `**How to …?**` question after a
  `. . .` build-up is common but not universal. Treat dividers and red
  questions as optional tools, and do not restructure a section merely because
  it omits them.
- **Title image.** Keep `.nostretch` and the explicit output height on the
  title image: auto-stretch collapses it in native scroll view, while an
  unconstrained natural size overflows the title slide.
- **Sources are inline links.** Cite by hyperlinking the words that make the
  claim (the tool, the file, the concept), including example files from other
  repositories such as `statsExpressions`, which go on the slide introducing
  them. A small-font centred source list is a rare exception for slides
  resting on several sources; do not spread it. The deck has **no references
  slide** and must not gain one; every source stays inline.
- **Spelling and punctuation.** Use British spelling in prose (colour, licence,
  catalogue, artefact) and the Oxford comma in lists of three or more. Leave
  code, identifiers, file names, URLs, quotations, and proper names (`license`
  in YAML, `.well-known/api-catalog`) as they are.
- **Spoken notes.** The read-aloud control speaks the `.notes` content. Write
  complete, audience-facing narration; keep staging cues, private reminders,
  and delivery checklists outside these blocks.
- **Accessibility.** Images must have `fig-alt` text; raw HTML widgets use
  `role="img"` and `aria-label`.
- **Icons.** Icons are HTML spans backed by only the required SVG path data in
  `style.css`; no icon font or Quarto icon extension. When adding one, add only
  its mask data, preserve the source licence attribution, and keep an
  accessible label where the icon conveys meaning.
- **Mermaid.** Keep diagrams as Mermaid source; do not replace them with
  pre-rendered SVGs to shrink the bundle.
- **Code execution.** The front matter sets `execute: echo: true` without a
  global `eval: false`, because the deck renders its figures through
  `knitr::include_graphics()`. Illustrative code blocks opt out individually
  with `eval=FALSE`. Declare every package an evaluated chunk uses in
  `DESCRIPTION`; `just install` and CI install R dependencies from it.
- **Discoverability files.** Update `meta-tags.html` when the title,
  description, or social card changes, and `llms.txt` / `llms-full.txt` (and
  their `.well-known/` mirrors) when the content changes significantly.
- **No new top-level files** without a clear reason; the structure is flat.

## CI/CD

- `.github/workflows/build-presentation.yaml` calls a reusable workflow from
  `IndrajeetPatil/workflows`: pushes to `main` build and deploy to GitHub
  Pages, pull requests build without deploying. Do not inline or modify that
  workflow here.
- Reference reusable workflows as `@main`, never a commit SHA: they are
  first-party, and a pinned SHA goes stale unnoticed.
- `check-link-rot.yaml` checks external links; list false positives in
  `.lycheeignore`.

## Agent skills

Skills live in `.agents/skills/<name>/SKILL.md`. Load one before its task:

| Skill | Load before |
| --- | --- |
| `check-accessibility` | Changing slide markup, styles, widgets, menus or the a11y setup; any accessibility audit |
