#!/bin/bash
if [ $# != 2 ]
then
 echo "The script need two parameters, main tex file and course name"
else
 echo "Compiling ..." &&\
 chronic pdflatex $1.tex &&\
 #chronic makeglossaries $1 &&\ 
 #chronic bibtex $1 &&\
 chronic pdflatex $1.tex &&\
 #Ref added 
 #chronic pdflatex $1.tex &&\
 echo "Compiling done, removing file..." &&\
 chronic rm */*.aux &&\
 #chronic rm *.bbl &&\
 #chronic rm *.blg &&\
 #chronic rm *.fdb_latexmk &&\
 #chronic rm *.fls &&\
 chronic rm *.toc &&\
 chronic rm *.out &&\
 chronic rm *.log &&\
 chronic rm *.aux &&\
 echo "Renaming file..." &&\
 chronic mv $1.pdf $2_notes.pdf &&
 echo "Script done"
fi
