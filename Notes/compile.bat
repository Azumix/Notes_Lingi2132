set argC=0
for %%x in (%*) do Set /A argC+=1
if %argC% == 2 GOTO COMPILE else GOTO NOPE

:NOPE
echo "This script need two parameters, main tex file name and course name."
GOTO END

:COMPILE
set file=%1
set fileTex=%1.tex
set filePdf=%1.pdf
set course=%2_notes.pdf
pdflatex %fileTex% ^
&& makeglossaries %file% ^
&& bibtex %file% ^
&& pdflatex %fileTex% ^
&& pdflatex %fileTex% ^
&& del /s *.aux ^
REM && del /s *.bbl ^
REM && del /s *.blg ^
REM && del /s *.fdb_latexmk ^
REM && del /s *.fls ^
&& del /s *.toc ^
&& del /s *.out ^
&& del /s *.log ^
&& REN %filePdf% %course%
GOTO END

:END
echo "Script done"
