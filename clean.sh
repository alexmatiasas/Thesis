#!/bin/bash

echo "🧹 Limpiando archivos generados por LaTeX..."

# Archivos comunes de compilación
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.fdb_latexmk *.fls *.gls *.glo *.glg
rm -f *.ist *.acn *.acr *.alg *.idx *.ilg *.ind *.nlo *.nls *.lof *.lot *.synctex.gz *.dvi *.ps

# También limpiar .aux dentro de Chapters
find ./Chapters -name "*.aux" -type f -delete

echo "✅ Limpieza completa."