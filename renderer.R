# if you want to build the slides locally
quarto::quarto_render("slides.qmd", output_format = "revealjs")

# duplicate `slides.html` as `index.html`
fs::file_copy("slides.html", "index.html", overwrite = TRUE)

# also rebuild README
rmarkdown::render("README.Rmd")
