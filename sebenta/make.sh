#!/bin/sh

cat head.md > livro.md
cat README.md >> livro.md
for chp in chp-*.md
do
printf '\n\\clearpage\n\n' >> livro.md
cat $chp >> livro.md
done
pandoc -f markdown-blank_before_header -t latex -o livro.pdf -i livro.md

open livro.pdf
