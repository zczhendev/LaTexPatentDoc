cd %~dp0 & rd /s /r /q output & mkdir output

cd %~dp0Figures\cover & xelatex -output-directory=%~dp0output cover
cd %~dp0Figures\claim & xelatex -output-directory=%~dp0output claim
cd %~dp0Figures\specification\abstract & xelatex -output-directory=%~dp0output spec_abstract
cd %~dp0Figures\specification & xelatex -output-directory=%~dp0output specification


cd %~dp0 & xelatex -output-directory=%~dp0output main

cd %~dp0

del *.aux /s /f /q
del *.log /s /f /q
del *.out /s /f /q
del *.synctex.gz /s /f /q
del *.bak /s /f /q
del *.bbl /s /f /q
del *.dvi /s /f /q
del *.blg /s /f /q
del *.thm /s /f /q
del *.toc /s /f /q
del *.lof /s /f /q
del *.lol /s /f /q
del *.lot /s /f /q
del *.nav /s /f /q
del *.snm /s /f /q
del *.fdb_latexmk /s /f /q
