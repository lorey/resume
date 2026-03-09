![Resume preview](https://github.com/lorey/resume/raw/main/resume.png)

# Resume of Karl Lorey

This is my resume. 
It's written in TeX and based on the awesome [Deedy Resume](https://github.com/deedy/Deedy-Resume).
I added a preview generation and defined a Docker image to run it without any hassle.

[View PDF](https://github.com/lorey/resume/raw/main/resume.pdf)

## Modifications
* Added about section to sidebar
* removed coursework
* extended skills section
* removed bibliography and research

## Usage

This can be run with docker and make without any further dependencies.
Just run:

```
make
```

Please keep in mind that a full latex installation is required
and thus the docker image needs around 2GB of storage.
If you have latex installed already an want to use the resume, 
you can try to replicate the steps in the makefile.
