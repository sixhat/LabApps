#!/bin/sh

cat head.md > livro.md
cat README.md >> livro.md
cat chp-*.md >> livro.md
pandoc -i livro.md -t latex -o livro.pdf