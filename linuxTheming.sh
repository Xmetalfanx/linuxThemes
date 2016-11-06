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
distroDetails=lsb_release -d

    clear
    echo "It appears you distro specifics are  $distroDetails "

    echo -e "\n\n Xmetal's Linux Theming Script \n"
    echo -e "Please Select your choice \n"

    echo -e   "1. \t Numix Themes"
    echo -e   "2. \t Numix Icon Themes"
    echo -e   "3. \t Manjaro-fy (Batch Manjaro Theme & Icon Install)"
    echo -e   "4. \t Windows 10 Theme"
    echo -e   "5. (Test only) GnomeLooks Numix "

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" themeSelection

case $themeSelection in

  1) numixThemes distro ;;

  2) numixIcon distro ;;

  3) bash $rootdir/functions/github/manjarofy.sh ;;

  4) win10 ;;

  5) numixGnomeLook ;;

  q) clear
      echo -e "Goodbye"
      exit
;;

esac
