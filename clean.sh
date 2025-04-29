#!/bin/bash

echo "🧹 Limpiando archivos generados por LaTeX..."

# Archivos auxiliares principales
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.fdb_latexmk *.fls *.synctex.gz *.dvi *.ps
rm -f *.lof *.lot *.idx *.ilg *.ind *.ist *.nlo *.nls *.nlg
rm -f *.glo *.gls *.glg *.acn *.acr *.alg

# Archivos de Beamer (si usas)
rm -f *.nav *.snm

# Archivos temporales en subdirectorios
find ./Chapters -name "*.aux" -type f -delete

echo "✅ Limpieza completa."