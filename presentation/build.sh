#!/bin/bash
set -e

echo "🔨 Compilando presentación con XeLaTeX..."

xelatex presentation.tex
biber presentation
xelatex presentation.tex
xelatex presentation.tex

echo "✅ ¡Presentación compilada con éxito usando XeLaTeX!"