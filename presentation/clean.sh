#!/bin/bash

echo "🧼 Limpiando archivos auxiliares..."

rm -f *.aux *.log *.out *.toc *.bbl *.blg *.fdb_latexmk *.fls *.nav *.snm *.synctex.gz
rm -f *.gls *.glo *.glg *.ist *.acn *.acr *.alg *.idx *.ilg *.ind *.nlo *.nls

echo "✅ Limpieza completa."