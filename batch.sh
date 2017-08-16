#! /bin/bash

# Batch file to generate course outlines

# If problem with /r characters, do the following
# sed -i 's/"\r"/"\n"/' batch.sh
# or try
# dos2unix batch.sh

session="_Fall 2017"

## FALL COURSE LIST ##
for dir in *BWT* *BXB* *BZE* *NYA* *NYB* *NYC* *001* *923* *925* *946* ; do

## WINTER COURSE LIST ##
#for dir in *BZA* *BZE* *NYA* *NYB* *NYC* *001* *912* *924* *943* *944* *Hollywood* ; do
#for dir in *BZA* ; do

## SUMMER COURSE LIST ##
#for dir in *NYA* *NYB* *NYC* *001* ; do

echo 'Generating outline for' $dir

# Copy template.tex
cp ./template.tex ./$dir/$dir.tex

# Copy dawsoncourseoutline.cls
cp ./dawsoncourseoutline.cls ./$dir/dawsoncourseoutline.cls

# Copy logo
cp ./dawson.png ./$dir/dawson.png

cd $dir
pdflatex $dir.tex > pdflatex.log
cp $dir.pdf ../Archive/$dir$session.pdf

rm *.log
rm *.aux
cd ..

done
