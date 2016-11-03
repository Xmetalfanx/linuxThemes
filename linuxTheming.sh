#!/bin/bash

readonly basedir=$(pwd)
rootdir=$basedir

fThemes= . "$rootdir"/functions/f_themes.cfg
$fThemes

fPManager= . "$rootdir"/functions/f_packageManager.cfg
$fPManager

###############################################################

## get the distro used, calling quid's script
checkDistro
echo $distro

    echo -e "Xmetal's Linux Theming Script \n"
    echo -e "Please Select your choice \n"

    echo -e   "1. \t Numix Themes"
    echo -e   "2. \t Numix Icon Themes"

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" themeSelection

case $themeSelection in

  1) numixThemes ;;

  2) numixIcon ;;

  q) clear
      echo -e "Goodbye"
      exit

esac
