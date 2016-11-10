#!/bin/bash

readonly basedir=$(pwd)
export basedir

rootdir=$basedir

import= . "$rootdir"/functions/import.cfg
$import

###############################################################
## get the distro used, calling quid's script
checkDistro
distro= lsb_release -d

    clear
    echo -e "\nIt APPEARS you distro is $distro based "

    echo -e "\n\nXmetal's Linux Theming Script"
    echo -e "Please Select your choice \n"

    echo -e   "1. \t PPAs Submenu for Ubuntu releases"
    echo -e   "2. \t Numix Themes"
    echo -e   "3. \t Numix Icon Themes"
    echo -e   "4. \t Manjaro-fy (Batch Manjaro Theme & Icon Install)"
    echo -e   "5. \t Windows 10 Theme"
    echo -e   "6. \t (Test only) GnomeLooks Numix "
    echo -e   "7. \t vimiDark GTK Theme"
    echo -e   "8. \t vimiLight GTK Theme"
    echo -e   "9. \t Mint-Y Theme and Icon Packs"

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" themeSelection

case $themeSelection in

  1) $rootdir/funcction/ppaThemes.sh ;;

  2) numixThemes distro ;;

  3) numixIcon distro ;;

  4) bash $rootdir/functions/github/manjarofy.sh ;;

  5) win10 ;;

  6) numixGnomeLook ;;

  7) vimiDarkGTK ;;

  8) vimiLightGTK ;;

  9)  MintyThemes
     MintyIcons
     echo "installed Mint-Y" ;;

  10) numixGnomeLook2 ;;

  q) quitScript ;;

  *) invalidSection ;;

esac
