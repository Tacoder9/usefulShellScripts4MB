#--------------------------------------------------------------------------------------------------------------
# Shell script to change the path of Java Plugins in order to prevent blurry appearance of Matlab on MBPRetina
#--------------------------------------------------------------------------------------------------------------

!/bin/sh

clear

echo "The script for MATLAB R2014a starts now..."
echo "export..."
export MATLAB_JAVA=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home
cd /Applications/MATLAB_R2014a.app/bin
./matlab -nosplash

