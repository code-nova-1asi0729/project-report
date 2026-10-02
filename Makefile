# Compila el informe: report/*.md  ->  build/project-report.pdf
# Uso:  make pdf | make check | make todo | make clean
# Requiere: pandoc, TeX Live (xelatex) y la plantilla Eisvogel (eisvogel.latex).

PANDOC ?= pandoc
OUT    := build/project-report.pdf

# Orden de compilación: carátula, archivos numerados 01-99 (el prefijo manda) y,
# al final, los anexos (el índice del curso los pone después de la bibliografía).
FRONT_MATTER := report/front-matter/cover.md
NUMBERED     := $(sort $(wildcard report/[0-9][0-9]-*.md))
ANNEXES      := $(sort $(wildcard report/annexes/*.md))
SOURCES      := $(FRONT_MATTER) $(NUMBERED) $(ANNEXES)

# metadata.yaml va AL FINAL a propósito: con --file-scope, el valor del último
# archivo gana, y así title/author globales no los pisan los YAML de cada capítulo.

# Filtros de diagramas: se activan solos si están instalados.
FILTERS := $(if $(shell command -v mermaid-filter 2>/dev/null),--filter mermaid-filter) \
	       $(if $(shell command -v pandoc-plantuml 2>/dev/null),--filter pandoc-plantuml)

.PHONY: pdf check todo clean

pdf: $(OUT)

$(OUT): Makefile metadata.yaml bibtex.bib $(SOURCES) $(wildcard report/assets/*)
	@mkdir -p build
	$(PANDOC) $(SOURCES) metadata.yaml \
	    --file-scope \
	    --citeproc \
	    --template=eisvogel \
	    --pdf-engine=xelatex \
	    --resource-path=.:report/assets \
	    $(FILTERS) \
	    -o $@
	@echo "Generado: $@"

check:
	@command -v $(PANDOC) >/dev/null || { echo "Falta pandoc"; exit 1; }
	@command -v xelatex >/dev/null || { echo "Falta xelatex (TeX Live)"; exit 1; }
	@echo "" | $(PANDOC) -t latex --template=eisvogel -o /dev/null 2>/dev/null \
	    || { echo "Falta la plantilla eisvogel.latex en la carpeta de plantillas de Pandoc"; exit 1; }
	@echo "Entorno OK"

todo:
	@grep -rn "COMPLETAR" report metadata.yaml README.md || echo "Sin pendientes"

clean:
	rm -rf build
