#!/bin/bash

echo "🧹 Limpiando archivos auxiliares de LaTeX..."

# Archivos comunes de compilación
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.fdb_latexmk *.fls
rm -f *.gls *.glo *.glg *.ist *.acn *.acr *.alg *.idx *.ilg *.ind
rm -f *.nlo *.nls *.lof *.lot *.synctex.gz *.dvi *.ps

# Archivos de nomenclatura
rm -f nomencl.aux

# Mensaje de éxito
echo "✅ Limpieza completada."
