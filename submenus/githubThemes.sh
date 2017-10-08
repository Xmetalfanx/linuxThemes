#!/bin/sh

rootdir=$basedir

gitFunction= . $rootdir/functions/github/gitFunctions.cfg
$gitFunction

#######################################################################
x=1
clear

while [[ $x=1 ]]; do

    echo -e   "What Theme would you like to install? "
    echo -e   "1) \t Arc Theme and Icons Pack"
    echo -e   "2) \t Mint-y Theme and Icon Pack"
    echo -e   "A) \t Arc and Mint-y Themes and Icons "

    echo -e 	"M) \t Return to Main Menu"
    echo -e		"Q) \t Exit to Prompt\n\n"

    read -p "Your Choice?:" gitThemeSelection

    case $gitThemeSelection in

        1)  gitArcThemes
            gitArcIcons
            gitArcOpenBox
					  echo "installed Arc"
            x=1
            ;;

        2) MintyThemes
           MintyIcons
					 echo "installed Mint-Y"
           x=1
           ;;

        [aA]) gitArcThemes
            gitArcIcons
            gitArcOpenBox
            MintyThemes
            MintyIcons
            x=1

            ;;

        [mM])
              ;;

        [qQ]) $commonFunctions
              quitScript
              ;;

    esac

done
