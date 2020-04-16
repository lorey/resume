.PHONY: all
SHELL := /bin/bash

all: resume.pdf resume.jpg

resume.jpg: resume.pdf .data/build.sentinel
	docker run --rm -v $$(pwd):/data lorey/resume:latest convert -density 300 -flatten resume.pdf -resize 50% -quality 66 resume.jpg
	

resume.pdf: .data/build.sentinel resume.xtx
	docker run --rm -v $$(pwd):/data lorey/resume:latest xelatex -synctex=1 -interaction=nonstopmode resume.xtx
	docker run --rm -v $$(pwd):/data lorey/resume:latest bibtex resume.aux
	docker run --rm -v $$(pwd):/data lorey/resume:latest xelatex -synctex=1 -interaction=nonstopmode resume.xtx
	docker run --rm -v $$(pwd):/data lorey/resume:latest xelatex -synctex=1 -interaction=nonstopmode resume.xtx

.data/build.sentinel: Dockerfile
	docker build -t lorey/resume:latest .
	touch .data/build.sentinel
