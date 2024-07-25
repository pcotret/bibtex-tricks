all:
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex
clean:
	rm *.pdf *.aux *.bbl *.blg *.log *.out