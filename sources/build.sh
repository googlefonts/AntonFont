#!/bin/sh
set -e

mkdir -p ../fonts/

echo = "Generating TTFs"
fontmake -g Anton.glyphs -o ttf --output-dir ../fonts -a

echo = "Post procesing TTF"
ttfs=$(ls ../fonts/*.ttf)
for ttf in $ttfs
do
    gftools fix-hinting $ttf
    mv "$ttf.fix" $ttf
    gftools fix-dsig -f $ttf;
done

# echo = "Generating OTFs"


# echo "Post processing static OTFs"
# otf=$(ls ../fonts/otf/*.otf)
# for otf in $otf
# do
# 	gftools-fix-dsig.py -f $otf;
#   psautohint $otf;
# done

echo "Done!"

rm -rf master_ufo/ instance_ufo/