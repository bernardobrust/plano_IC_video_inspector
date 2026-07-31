latex_file = paper
interaction = -interaction=nonstopmode

pdf:
	pdflatex $(interaction) $(latex_file)
	bibtex $(latex_file)
	pdflatex $(interaction) $(latex_file)
	pdflatex $(interaction) $(latex_file)

clean:
	rm -f *.aux *.bbl *.blg *.log

clean-all: clean
	rm -f *.pdf
