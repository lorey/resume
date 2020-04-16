![Resume preview](https://github.com/lorey/resume/raw/master/resume.jpg)

# Resume of Karl Lorey

This is my resume. 
It's written in TeX, based on the awesome [Deedy Resume](https://github.com/deedy/Deedy-Resume) 
and inspired by [Johannes Schickling's resume](https://github.com/schickling/resume).
I added a preview generation and defined a Docker image to run it without any hassle.
The resume itself has a smaller bibliography to fit more publications
and a sidebar with more skills instead of coursework
to focus on actual experience.

[View PDF](https://github.com/lorey/resume/raw/master/resume.pdf)

## Modifications
* Small bibliography to fit more publications
* Sidebar without coursework, IMHO superfluous if you have work experience
* Sidebar with extended skills section, to focus on said experience

## Requirements
Just use Docker, or:
* xelatex, bibtex
* imagemagick
* Fonts: [Lato](https://fonts.google.com/specimen/Lato) and [Raleway](https://fonts.google.com/specimen/Raleway)

## Usage (Docker)
Everything is contained in the provided Dockerfile that can be used with the Makefile.
Just run:

```
make
```

Please keep in mind that a full latex installation is required
and thus the docker image needs around 2GB of storage.
If you have latex installed already an want to use the Resume, 
you can follow the steps below to save diskspace.

## Installation and usage without Docker
There is a Makefile that defines all outputs (although with docker required).
You can find all the commands there, here's a quick howto though:

First, install all dependencies (latex-full, xelatex, bibtex, imagemagick, fonts).
Then, to generate pdf and jpg files:

```bash
# generate pdf with latex and bibtex
xelatex -synctex=1 -interaction=nonstopmode resume.xtx
bibtex resume.aux
xelatex -synctex=1 -interaction=nonstopmode resume.xtx
xelatex -synctex=1 -interaction=nonstopmode resume.xtx
# generate the jpg preview
convert -density 300 -flatten resume.pdf -resize 50% -quality 66 resume.jpg
```
