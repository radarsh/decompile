@echo off

mkdir src
mkdir classes

echo Copying .class files...
xcopy /Q /E /Y classes src

echo Decompiling .class files into .java files...
for /R src %%a in (*.class) do jad -d %%~dpa -o -s .java "%%a"

echo Deleting .class files...
cd src
del /S /Q *.class
cd..

pause
