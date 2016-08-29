all:
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	bibtex resume.aux && \
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	convert -quality 100 -density 150 -flatten resume.pdf resume.png

