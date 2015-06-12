#!/bin/sh

ARG="$1"
GIMP="/Applications/Gimp.app/Contents/Resources/bin/gimp"

FILE="tex-test-temp.tex"
BASE="${FILE%.tex}"
cat tex-pre.tex > "$FILE"
echo "\begin{equation}\notag" >> "$FILE"
echo "\ee^x" >> "$FILE"
echo "\end{equation}" >> "$FILE"
cat tex-post.tex >> "$FILE"

#thumbpdf
#osascript

pdflatex "$FILE"
