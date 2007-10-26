#! /bin/bash

name=dft

tex=pdftex

dir=$(pwd)
export TEXINPUTS="$dir/macros:$dir/src:$dir/images:"
export BIBINPUTS="$dir/src:"
#echo $TEXINPUTS
mkdir -p tmp

$tex -jobname $name -fmt=csplain -output-directory tmp main.tex
bibtex tmp/$name
$tex -jobname $name -fmt=csplain -output-directory tmp main.tex
$tex -jobname $name -fmt=csplain -output-directory tmp main.tex

cd tmp 
dvips $name.dvi
#dvipdf $name.dvi

#copy the ps to the root dir
cp $name.ps ..
