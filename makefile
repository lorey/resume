all:
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	bibtex resume.aux && \
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	xelatex -synctex=1 -interaction=nonstopmode resume.xtx && \
	convert -density 300 -flatten resume.pdf -resize 50% -quality 66 resume.jpg

