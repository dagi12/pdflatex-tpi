#!/bin/sh

for f in *.tex; do
        cp ../main.tex tmpfile
        cat $f >> tmpfile
        echo '\end{document}' >> tmpfile
	mv tmpfile $f
	pdflatex $f
done
