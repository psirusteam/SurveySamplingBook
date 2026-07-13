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
  message("Faltan paquetes R: ", paste(missing_packages, collapse = ", "))
  message("Instalando desde CRAN...")
  install.packages(missing_packages)
} else {
  message("Todos los paquetes R requeridos estan disponibles.")
}

if (requireNamespace("quarto", quietly = TRUE)) {
  quarto_bin <- tryCatch(quarto::quarto_path(), error = function(e) "")
  if (!nzchar(quarto_bin)) {
    message("El paquete R 'quarto' esta instalado, pero no encontro el binario de Quarto.")
    message("Instala Quarto Desktop o revisa que RStudio lo detecte.")
  } else {
    message("Quarto detectado en: ", quarto_bin)
  }
}

