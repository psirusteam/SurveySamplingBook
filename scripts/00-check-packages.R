required_packages <- c(
  "TeachingSampling",
  "xtable",
  "ggplot2",
  "gridExtra",
  "GGally",
  "knitr",
  "quarto"
)

missing_packages <- required_packages[
  !vapply(required_packages, requireNamespace, logical(1), quietly = TRUE)
]

if (length(missing_packages) > 0) {
  message("Missing R packages: ", paste(missing_packages, collapse = ", "))
  message("Installing from CRAN...")
  install.packages(missing_packages)
} else {
  message("All required R packages are available.")
}

if (requireNamespace("quarto", quietly = TRUE)) {
  quarto_bin <- tryCatch(quarto::quarto_path(), error = function(e) "")
  if (!nzchar(quarto_bin)) {
    message("The R package 'quarto' is installed, but the Quarto binary was not found.")
    message("Install Quarto Desktop or check that RStudio detects it.")
  } else {
    message("Quarto detected at: ", quarto_bin)
  }
}
