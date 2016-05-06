# Makefile for UNH thesis

thesis:
	latexmk -pdf thesis.tex


excerpt: thesis
	latexmk -pdf excerpt.tex


clean:
	latexmk -c thesis.tex
