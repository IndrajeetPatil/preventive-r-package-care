# Preventive Care for R Packages

[![Build and Deploy Presentation](https://github.com/IndrajeetPatil/preventive-r-package-care/actions/workflows/build-presentation.yaml/badge.svg)](https://github.com/IndrajeetPatil/preventive-r-package-care/actions/workflows/build-presentation.yaml)

<img src="media/preventive-care.webp" align="right" width="250" alt="A plant being watered" />

As an R package developer, if you ever lay awake in bed wondering:

- if the users are having a bad experience while using the package,
- if you will receive the dreaded CRAN email about archival, and
- if you will be able to update the package in time,

then this presentation is for you! 😊

**It is possible to build robust automation infrastructure for R package
development that can improve user experience and make long-term
development more reliable and sustainable.**

The slides discuss how to build such infrastructure:
<https://www.indrapatil.com/preventive-r-package-care/>

## Development

This project uses R 4.6.0 or later (declared in `DESCRIPTION`), [Quarto](https://quarto.org/) for rendering slides, and [just](https://github.com/casey/just) as a command runner.

### Prerequisites

```bash
# Install just (macOS)
brew install just
```

### Setup

```bash
just install
```

### Just Commands

```bash
just help     # Show all available commands
just install  # Install R dependencies and the a11y extension
just sync     # Alias for install
just update   # Upgrade R dependencies to their latest versions
just render   # Render slides to HTML
just preview  # Start a live preview with auto-reload
just open     # Alias for preview (live-reload dev server over localhost)
just clean    # Remove generated files and caches
just axe      # Preview with an accessibility report slide (accepts preview flags)
just check    # Check the Quarto and R version setup
just          # Install dependencies and start live-reload preview
```

The `just axe` command activates the `a11y` profile for Quarto's accessibility report.
For a headless audit, run `just axe --no-browser --port 8860`, then open that URL in a browser.
Inspect the report and each slide, including fragments, scroll view, and keyboard navigation.
Normal renders omit the audit payload and report. Use
`QUARTO_PROFILE=a11y quarto render index.qmd` for an audit build without a preview server.

### Accessibility

`just install` and the shared CI workflow install the latest
[`quarto-revealjs-a11y`](https://github.com/mcanouil/quarto-revealjs-a11y) directly
from upstream with `quarto add mcanouil/quarto-revealjs-a11y --no-prompt`.
The extension handles browser zoom, slide isolation, focus indicators, link
underlines, reduced motion, and screen-reader announcements.

The `accessibility.html` helper handles scrollable code, slide-menu focus, and
vertical-slide semantics. It is a shared fleet-wide helper and is kept
byte-identical across all eleven decks, which `check-template-drift.yaml`
enforces. It therefore also carries tabset keyboard handling; this deck has no
tabsets, so that branch is inert here and must not be deleted locally.
The extension's slide-menu patch and accessibility settings panel are disabled
as in the reference deck: version 0.2.3 introduces ARIA and contrast failures in
those components.

Use `just axe` to inspect slides, fragments, and menu panels in presentation and
scroll views. Normal builds omit the axe checker.

## Feedback

Feedback and suggestions are welcome in [the issue tracker](https://github.com/IndrajeetPatil/preventive-r-package-care/issues).

## Acknowledgements

All icons used in these slides have been taken from _Flaticon_
(www.flaticon.com) by _freepikcompany_ (www.freepik.com). Huge thanks to
them for making such fantastic resource freely available to the
community!

## License

Although the current repository is published under [CC0 1.0 Universal
(CC0 1.0)](https://creativecommons.org/publicdomain/zero/1.0/), this
license **does not** cover images in the `/media` folder. If you use
them, you need to follow the attribution policy stated by _Flaticon_.
