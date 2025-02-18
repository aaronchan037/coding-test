pdftex -v
echo "===================="
xetex -v
echo "===================="
luatex -v


echo "===================="
pdflatex test.tex
echo "===================="
xelatex simple.tex
echo "===================="
lualatex simple.tex
echo "===================="
