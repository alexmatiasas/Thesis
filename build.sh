#!/bin/bash
# build.sh — Compilación completa del proyecto LaTeX con bibliografía, glosarios y nomenclatura

set -e

echo "🔨 Iniciando compilación de tesis (main.tex)..."

# Primera pasada para generar .aux y .toc
pdflatex -interaction=nonstopmode main.tex

# Bibliografía
bibtex main

# Glosarios y acrónimos
makeglossaries main

# Nomenclatura (si tienes archivo nomencl.ist)
makeindex main.nlo -s nomencl.ist -o main.nls

# Dos pasadas adicionales para referencias cruzadas, glosarios y nomenclatura
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

echo "✅ ¡Compilación completada exitosamente!"
echo "📄 Archivo generado: main.pdf"

# Limpieza auxiliar opcional
if [[ $1 == "--clean" ]]; then
    echo "🧹 Ejecutando limpieza post-compilación..."
    ./clean.sh
    echo "✅ Proyecto limpio."
fi