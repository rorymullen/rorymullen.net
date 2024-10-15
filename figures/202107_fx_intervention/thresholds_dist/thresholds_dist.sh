#!/bin/bash
# Convert TikZ to SVG

# 1. Compile the TikZ to PDF
pdflatex thresholds_dist.tex

# 2. Convert the PDF to SVG
pdf2svg thresholds_dist.pdf thresholds_dist.svg

# 3. Optimize the SVG
svgo thresholds_dist.svg