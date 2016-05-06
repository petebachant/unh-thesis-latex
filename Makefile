# Makefile for UNH thesis

thesis:
	latexmk -pdf thesis.tex


view: thesis
ifeq ($(shell uname -s),MINGW64_NT-10.0)
	start "" thesis.pdf
else
	echo "Viewing only setup for Windows"
endif


excerpt: thesis
	latexmk -pdf excerpt.tex


clean:
	latexmk -c thesis.tex
