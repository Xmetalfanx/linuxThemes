#!/bin/bash

readonly basedir=$(pwd)
export basedir

rootdir=$basedir

import= . "$rootdir"/functions/import.cfg
$import

###############################################################
## get the distro used, calling quid's script
checkDistro
distro=$(lsb_release -d)
release=$(lsb_release -r)

    clear
    echo -e "\nIt APPEARS you distro is $distro based "

    echo -e "\n\nXmetal's Linux Theming Script"
    echo -e "Please Select your choice \n"

    echo -e   "1. \t PPAs Ubuntu Submenu"
    echo -e   "2. \t Numix Themes and Icon Submenu"
    echo -e   "3. \t Manjaro-fy (Batch Manjaro Theme & Icon Install)"
    echo -e   "5. \t Windows 10 Theme"
    echo -e   "5. \t (Test only) GnomeLooks Numix "
    echo -e   "6. \t vimiDark GTK Theme"
    echo -e   "7. \t vimiLight GTK Theme"
    echo -e   "8. \t Mint-Y Theme and Icon Packs"

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" themeSelection

case $themeSelection in

  1) $rootdir/submenus/ppaThemes.sh ;;

  2) $rootdir/submenus/numix.sh ;;


  3) bash $rootdir/functions/github/manjarofy.sh ;;

  4) win10 ;;

  5) numixGnomeLook ;;

  6) vimiDarkGTK ;;

  7) vimiLightGTK ;;

  8)  MintyThemes
     MintyIcons
     echo "installed Mint-Y" ;;

  9) numixGnomeLook2 ;;

  q) quitScript ;;

  *) invalidSection ;;

esac
