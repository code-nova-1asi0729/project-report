# Informe del Trabajo Final · 1ASI0729

Repositorio colaborativo del informe del Trabajo Final del curso **Desarrollo de Aplicaciones Open Source** (UPC, período 202620).

- **Equipo:** CodeNova
- **Producto:** Vigilia · plataforma web de mantenimiento preventivo de edificios con sensores IoT

> Este README es solo la carta de presentación del repositorio. **El informe está en [`report/`](report/)**.

## Estructura

```text
report/
├── front-matter/        carátula (cover.md)
├── 01-… 04-…            registro de versiones, collaboration insights, índice y Student Outcome
├── 10-… 13-…            Capítulo I   (10 = título del capítulo; 11, 12… = sus secciones)
├── 20-… 25-…            Capítulo II
├── 30-… 33-…            Capítulo III
├── 40-… 48-…            Capítulo IV
├── 50-… 54-…            Capítulo V   (un archivo por sprint: 53-sprint-1.md, 54-sprint-2.md, …)
├── 60-…                 conclusiones y recomendaciones
├── 99-bibliography.md   referencias (las entradas viven en bibtex.bib)
├── annexes/             anexos (annex-a-….md)
└── assets/              logos, imágenes y diagramas
```

Los archivos se compilan por prefijo numérico y luego los anexos. Para agregar una sección o un sprint, crea `NN-nombre-en-kebab-case.md` con el prefijo del capítulo (decena) y el siguiente número libre. Los títulos llevan su numeración escrita a mano (`4.8.1.3.`), porque la fija la plantilla del curso.
<!--
## Generar el PDF

Requisitos: [Pandoc](https://pandoc.org/), TeX Live completo (`xelatex`) y la plantilla [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) (sus paquetes LaTeX están listados en su README). Opcional para diagramas: `mermaid-filter` y `pandoc-plantuml`. En Windows, usa WSL.

Probado con **Pandoc 3.12** y **Eisvogel 3.5.1**. Con Pandoc 3.1.x la bibliografía falla por incompatibilidad con la plantilla: actualiza Pandoc.

```bash
make check   # verifica el entorno
make pdf     # genera build/project-report.pdf
make todo    # lista lo que falta completar
```
-->
## Cómo contribuir

1. Parte siempre de `develop`: `git checkout -b feature/NN-nombre develop` (usa el prefijo del archivo, p. ej. `feature/48-database-design`).
2. Commits con [Conventional Commits](https://www.conventionalcommits.org/): `docs: …`, `fix: …`, `build: …`.
3. Abre un Pull Request hacia `develop` adjuntando la previsualización en PDF.
4. `main` solo recibe las entregas desde una rama `release/X.Y.Z`; no se hace push directo.
