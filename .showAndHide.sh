#------------------------------------------------------------------
# Shell script to either show or hide .hiddenFiles in your Finder
# Don't forget to add an alias to your .bash_profile to be able to
# use this script (see aliases.txt)
#------------------------------------------------------------------
#!/bin/sh
# to update .bash_profile type $source ~/.bash_profile

clear
echo "Script to show or hide hidden files is running.."
echo "Please enter show or hide: "
read answer
echo "Your answer is: $answer"
if [ "$answer" = "show" ]
then
    defaults write com.apple.Finder AppleShowAllFiles YES
    killall Finder
elif [ "$answer" = "hide" ]
then
    defaults write com.apple.Finder AppleShowAllFiles NO
    killall Finder
else
    echo "Your answer was incorrect, please try again"
fi
