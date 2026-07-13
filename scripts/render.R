if (!requireNamespace("quarto", quietly = TRUE)) {
  stop(
    "Falta el paquete R 'quarto'. Ejecuta primero: ",
    "source('scripts/00-check-packages.R')",
    call. = FALSE
  )
}

quarto::quarto_render(input = ".", output_format = "html")
