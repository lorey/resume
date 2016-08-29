all:
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	bibtex resume.aux && \
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	convert -density 300 resume.pdf -resize 50% resume.png

