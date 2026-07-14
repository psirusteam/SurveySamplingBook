if (!requireNamespace("quarto", quietly = TRUE)) {
  stop(
    "The R package 'quarto' is missing. Run this first: ",
    "source('scripts/00-check-packages.R')",
    call. = FALSE
  )
}

quarto::quarto_render(input = ".", output_format = "html")
