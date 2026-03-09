.PHONY: all
SHELL := /bin/bash

all: .data/build.sentinel resume.pdf resume.png

resume.png: resume.pdf .data/build.sentinel
	docker run --rm -v $$(pwd):/data lorey/resume:latest convert -density 150 -flatten resume.pdf resume.png
	

resume.pdf: .data/build.sentinel resume.xtx
	docker run --rm -v $$(pwd):/data lorey/resume:latest xelatex -synctex=1 -interaction=nonstopmode resume.xtx
	docker run --rm -v $$(pwd):/data lorey/resume:latest xelatex -synctex=1 -interaction=nonstopmode resume.xtx

.data/build.sentinel: Dockerfile
	docker build -t lorey/resume:latest .
	touch .data/build.sentinel
