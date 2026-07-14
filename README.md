# Estrategias de muestreo en Quarto

Este proyecto contiene la version HTML del libro migrado desde LaTeX/Sweave a Quarto.

La version web publicada esta disponible en: https://psirusteam.github.io/SurveySamplingBook/

## Archivos principales

- `_quarto.yml`: configuracion del libro Quarto.
- `index.qmd`: prologo, prefacio y pagina inicial del libro.
- `chapters/`: capitulos `cap1.qmd` a `cap15.qmd`.
- `references.bib`: bibliografia del libro.
- `styles.css`: ajustes visuales para la salida HTML.
- `scripts/render.R`: compilacion desde RStudio/R.
- `scripts/00-check-packages.R`: verificacion de paquetes de R.
- `scripts/number-callouts.html`: numeracion y enlaces HTML para definiciones, resultados, ejemplos y referencias heredadas.
- `docs/`: salida HTML estatica generada por Quarto y lista para GitHub Pages.

## Compilar desde RStudio

1. Abre `MuestreoQuarto.Rproj`.
2. Opcionalmente verifica los paquetes requeridos:

```r
source("scripts/00-check-packages.R")
```

3. Compila desde el panel **Build** con **Render Book**.

Tambien puedes compilar desde la consola de RStudio:

```r
source("scripts/render.R")
```

O llamar directamente a Quarto:

```r
quarto::quarto_render(".", output_format = "html")
```

## Compilar desde terminal

Desde esta carpeta (`quarto/`):

```bash
quarto render --to html
```

La salida se genera por defecto en `docs/index.html`.

## Publicar en GitHub Pages

El proyecto esta configurado para publicar el sitio estatico generado en `quarto/docs`.

1. Compila el libro.
2. Sube al repositorio los cambios en `quarto/docs`.
3. En GitHub, entra a `Settings > Pages`.
4. En `Build and deployment`, selecciona `GitHub Actions`.

El workflow `.github/workflows/pages.yml` publica automaticamente la carpeta `quarto/docs`.

No uses la opcion `Deploy from a branch` con la carpeta `/docs`: esa opcion busca `docs/` en la raiz del repositorio, pero en este proyecto la salida estatica vive en `quarto/docs`.

## Notas

- La salida PDF no esta configurada; esta version se enfoca solo en HTML.
- No borres `docs/` si quieres publicar en GitHub Pages.
- Puedes borrar `_freeze/` si quieres forzar una recompilacion completa; Quarto lo vuelve a crear cuando sea necesario.
