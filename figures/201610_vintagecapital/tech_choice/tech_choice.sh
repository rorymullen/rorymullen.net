#!/bin/bash
# Convert TikZ to SVG

# 1. Compile the TikZ to PDF
pdflatex tech_choice.tex

# 2. Convert the PDF to SVG
pdf2svg tech_choice.pdf tech_choice.svg

# 3. Optimize the SVG
svgo tech_choice.svg