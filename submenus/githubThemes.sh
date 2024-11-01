#!/bin/bash

. $functionsdir/github/gitFunctions.cfg

#######################################################################
x=1
clear

while [[ "$x" = "1" ]]; do

    echo -e   "What Theme would you like to install? "
    echo -e   "1) \t Mint-y Theme and Icon Pack"
    echo -e   "A) \t Arc and Mint-y Themes and Icons "

    echo -e 	"M) \t Return to Main Menu"
    echo -e		"Q) \t Exit to Prompt\n\n"

    read -r -p "Your Choice?:" gitThemeSelection

    case $gitThemeSelection in

        1) MintyThemes
           MintyIcons
			echo "installed Mint-Y"
           x=1
           ;;

        [aA]) 
            
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
