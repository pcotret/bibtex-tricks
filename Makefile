all:
	pdflatex -shell-escape main.tex 
	bibtex main
	bibtex I
	bibtex J
	pdflatex -shell-escape main.tex 
	pdflatex -shell-escape main.tex 
clean:
	rm *.pdf *.aux *.bbl *.blg *.log *.out
	rm -r _minted-main