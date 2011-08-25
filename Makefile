all: clean
	xelex resume.tex
	gnome-open resume.pdf

clean:
	rm resume.log resume.aux resume.pdf
