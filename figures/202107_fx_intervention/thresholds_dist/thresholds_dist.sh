#!/bin/bash
# Convert TikZ to SVG using latex and dvisvgm

# 1. Compile the TikZ to DVI using latex
latex --shell-escape thresholds_dist.tex

# 2. Convert the DVI file to SVG using dvisvgm
dvisvgm thresholds_dist.dvi -o thresholds_dist.svg

# 3. Optimize the SVG file using svgo (optional)
svgo thresholds_dist.svg

# 4. Modify the SVG to preserve text size (optional)
# This will add 'text' to preserve text scaling
xmlstarlet ed -L \
  -u "//text" -v "preserve" \
  thresholds_dist.svg