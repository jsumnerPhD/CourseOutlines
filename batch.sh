# If problem with /r characters, do the following
# sed -i 's/"\r"/"\n"/' batch.sh


#! /bin/bash

session="_Summer2016"

# Batch file to generate course outlines for all directories starting 203

for dir in *001*;do
echo 'Generating outline for' $dir

# Copy template.tex
cp ./template.tex ./$dir/$dir.tex

# Copy dawsoncourseoutline.cls
cp ./dawsoncourseoutline.cls ./$dir/dawsoncourseoutline.cls

# Copy logo
cp ./dawson.png ./$dir/dawson.png

cd $dir
pdflatex $dir.tex > pdflatex.log
mv $dir.pdf $dir$session.pdf
rm *.log
rm *.aux
cd ..
done