# Compilacion HTML del proyecto Quarto

Este subproyecto contiene la primera migracion del libro desde LaTeX/Sweave a Quarto, enfocada unicamente en salida HTML.

## Archivos principales

- `_quarto.yml`: configuracion del libro HTML.
- `index.qmd`: portada/presentacion inicial.
- `chapters/cap1.qmd`: capitulo 1 convertido.
- `chapters/cap2.qmd`: capitulo 2 convertido.
- `chapters/cap3.qmd`: capitulo 3 convertido.
- `chapters/cap4.qmd`: capitulo 4 convertido.
- `chapters/cap5.qmd`: capitulo 5 convertido.
- `chapters/cap6.qmd`: capitulo 6 convertido.
- `chapters/cap7.qmd`: capitulo 7 convertido.
- `chapters/cap8.qmd`: capitulo 8 convertido.
- `references.bib`: copia local de `../LibroBib.bib`.
- `tex/preamble.tex`: macros LaTeX heredadas, conservadas solo como referencia.
- `renv/dependencies.R`: chequeo simple de paquetes R requeridos por los capitulos convertidos.

## Antes de compilar

Desde R, puedes verificar paquetes con:

```r
source("renv/dependencies.R")
```

Si falta alguno:

```r
install.packages(c("TeachingSampling", "xtable", "ggplot2", "gridExtra", "GGally", "knitr"))
```

## Compilar HTML

Desde esta carpeta (`quarto/`):

```bash
quarto render
```

O explicitamente:

```bash
quarto render --to html
```

Desde RStudio:

```r
source("scripts/render.R")
```

## Nota

Las tablas y algunos bloques heredados de LaTeX que sigan en los capitulos deben convertirse gradualmente a Markdown, `knitr::kable()` o tablas generadas desde R para mejorar la salida web.
