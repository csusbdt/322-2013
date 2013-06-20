#!/bin/bash

if ! type "pandoc" > /dev/null; then
  echo Please install Pandoc.
else
  pandoc -s docs/*.md --latex-engine=xelatex --toc -o book.tex
  pandoc -s book.tex -o book.pdf
  rm book.tex
fi
