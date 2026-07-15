# Preventive Care for R Packages

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
just install  # Install R dependencies from DESCRIPTION
just render   # Render slides to HTML
just preview  # Start a live preview with auto-reload
just open     # Alias for preview (live-reload dev server over localhost)
just clean    # Remove generated files and caches
just check    # Check the Quarto and R version setup
just          # Install dependencies and start live-reload preview
```

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
