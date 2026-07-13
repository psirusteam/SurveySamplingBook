# Compilar HTML desde RStudio

1. Abre el archivo `MuestreoQuarto.Rproj` en RStudio.
2. Verifica o instala paquetes con:

```r
source("scripts/00-check-packages.R")
```

3. Compila desde el panel **Build** de RStudio con **Render Book**. El proyecto esta configurado para generar HTML.

También puedes compilar desde la consola de RStudio:

```r
source("scripts/render.R")
```

Para renderizar explicitamente HTML:

```r
quarto::quarto_render(".", output_format = "html")
```

El archivo de configuración principal es `_quarto.yml`. Por ahora el libro incluye `index.qmd` y los capítulos `chapters/cap1.qmd` a `chapters/cap8.qmd`.

Esta version no incluye salida PDF. El preambulo LaTeX queda en `tex/preamble.tex` solo como referencia historica de la migracion.

Si RStudio intenta previsualizar un capítulo suelto, abre el archivo dentro de `chapters/`, por ejemplo `chapters/cap8.qmd`.
