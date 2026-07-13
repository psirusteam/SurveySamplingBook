# Paquetes R usados por el capítulo 1 convertido.
# Ejecutar manualmente si falta alguno:
# install.packages(c("TeachingSampling", "xtable", "ggplot2", "gridExtra", "GGally", "knitr"))

required_packages <- c(
  "TeachingSampling",
  "xtable",
  "ggplot2",
  "gridExtra",
  "GGally",
  "knitr"
)

missing_packages <- required_packages[!vapply(required_packages, requireNamespace, logical(1), quietly = TRUE)]

if (length(missing_packages) > 0) {
  message("Faltan paquetes: ", paste(missing_packages, collapse = ", "))
  message("Instalar con: install.packages(c(", paste(sprintf('"%s"', missing_packages), collapse = ", "), "))")
} else {
  message("Todos los paquetes requeridos están disponibles.")
}
