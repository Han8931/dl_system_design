.PHONY: main clean FORCE

main: main.pdf

main.pdf: FORCE
	pdflatex -synctex=1 -interaction=nonstopmode main.tex
	bibtex main.aux

clean:
	rm main.bbl main.blg main.aux
