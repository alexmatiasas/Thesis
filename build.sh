#!/bin/bash
# build.sh — Compilación completa del proyecto LaTeX

set -e

echo "🔨 Compilando tesis (main.tex)..."

pdflatex main.tex
bibtex main.aux
makeglossaries main
makeindex nomencl
pdflatex main.tex
pdflatex main.tex

echo "✅ ¡Compilación completada exitosamente!"
echo "📄 Resultado: main.pdf"

# Si se pasa --clean, se limpia después de compilar
if [[ $1 == "--clean" ]]; then
    echo "🧹 Limpiando archivos auxiliares tras la compilación..."
    ./clean.sh
    echo "✅ Proyecto limpio."
fi