#!/bin/bash
buildDir=tmpDir
j21Dir=june-21

# Build for Linux 
rm -f -R $buildDir
mkdir $buildDir
cd $buildDir
pwd
cmake ../../plugins/junosyxloader/
make
cp ../../doc/*.png .
cp ../../doc/*.texi .
pdftex manual.texi
pdftex manual.texi
mv manual.pdf june-21-manual.pdf

cd ..

rm -f -R $j21Dir
mkdir $j21Dir
cp $buildDir/libjsl.so $j21Dir
cp $buildDir/june-21-manual.pdf $j21Dir

cp   ../cabbage-module/june-21.csd  $j21Dir/june-21.csd
cp -R ../cabbage-module/dat $j21Dir
cp -R ../cabbage-module/imgs $j21Dir
cp -R ../cabbage-module/presets $j21Dir
cp -R ../runtime/linux/* $j21Dir

zip -r vst-june-21-linux.zip june-21/*

# Build for Windows 
rm -f -R $buildDir
mkdir $buildDir
cd $buildDir
cmake -DCMAKE_TOOLCHAIN_FILE=../../plugins/junosyxloader/cmake/toolchain-w64.cmake  -S ../../plugins/junosyxloader/
make
cp ../../doc/*.png .
cp ../../doc/*.texi .
pdftex manual.texi
pdftex manual.texi
mv manual.pdf june-21-manual.pdf
cd ..

rm -f -R $j21Dir
mkdir $j21Dir
cp $buildDir/libjsl.dll $j21Dir
cp $buildDir/june-21-manual.pdf $j21Dir

cat ../cabbage-module/june-21.csd | sed 's/\.\/libjsl.so/libjsl.dll/g' > $j21Dir/june-21.csd
cp ../cabbage-module/june-21.txt $j21Dir
cp -R ../cabbage-module/dat $j21Dir
cp -R ../cabbage-module/imgs $j21Dir
cp -R ../cabbage-module/presets $j21Dir
cp -R ../runtime/windows/* $j21Dir

zip -r standalone-june-21-windows64.zip june-21/*


mv standalone-june-21-windows64.zip ../../distribWindows/
mv vst-june-21-linux.zip ../../distribLinux/

rm -f -R $buildDir
rm -f -R $j21Dir


