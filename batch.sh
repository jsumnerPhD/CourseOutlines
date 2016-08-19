# If problem with /r characters, do the following
# sed -i 's/"\r"/"\n"/' batch.sh
# or try
# dos2unix batch.sh


#! /bin/bash

session="_Fall2016"

# Batch file to generate course outlines for all directories starting 203

## FALL COURSE LIST ##
#for dir in *NYA* *NYB* *NYC* *BZE* *001* *923* *946* *BXB* *925* *BWT* ;do
for dir in *NYB*; do
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
