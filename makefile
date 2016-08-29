all:
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	bibtex resume.aux && \
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	convert -density 200 -flatten resume.pdf -quality 100 resume.png

