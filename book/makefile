# -*- makefile -*-

CC = pdflatex
FILE = *.tex

OPT = -synctex=1 -interaction=nonstopmode

allmake: $(FILE)
	$(CC) $(OPT) $^
	
clean: 
	rm -f *.synctex.gz *.log *.aux *.blg *.out *.qry *.nav *.snm *.toc

clear: clean
	rm -f *.pdf *.bbl
#	clean
