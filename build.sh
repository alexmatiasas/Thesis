#!/bin/bash
# build.sh — Compilación completa del proyecto LaTeX

set -e

echo "🔨 Compilando tesis (main.tex)..."

# 1. Compilación inicial
pdflatex main.tex

# 2. Bibliografía
bibtex main

# 3. Glosarios y acrónimos
makeglossaries main

# 4. Nomenclatura
makeindex main.nlo -s nomencl.ist -o main.nls

# 5. Compilación final para resolver referencias cruzadas
pdflatex main.tex
pdflatex main.tex

echo "✅ ¡Compilación completada exitosamente!"
echo "📄 Resultado: main.pdf"

# Limpieza opcional
if [[ $1 == "--clean" ]]; then
    echo "🧹 Limpiando archivos auxiliares tras la compilación..."
    ./clean.sh
    echo "✅ Proyecto limpio."
fi