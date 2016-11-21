#!/bin/bash

readonly basedir=$(pwd)
export basedir

rootdir=$basedir

import= . "$rootdir"/functions/import.cfg
$import

###############################################################
## get the distro used, calling quid's script
checkDistro2

  distrobase=${osrelease#"ID_LIKE="}

  clear
  echo -e "Xmetal's Linux Theming Script\n"

  echo -e "Your distro appears to be ${distrobase} based"
  echo -e "\nIt APPEARS you distro is $distro "

    echo -e "Please Select your choice \n"

    echo -e   "1. \t SUB-MENU - PPAs and Ubuntu Related"
    echo -e   "2. \t SUB-MENU - MAC/Apple Related "
    echo -e   "3. \t SUB-MENU - Numix Themes and Icon Submenu"
    echo -e   "4. \t SUB-MENU - Manjaro-fy (Batch Manjaro Theme & Icon Install)"

    echo -e   "5. \t Mint-Y Theme and Icon Packs"
    echo -e   "6. \t Arc Theme and Icon Pack"
    echo -e   "7. \t Windows 10 GTK3 Theme"
    echo -e   "8. \t vimiDark GTK Theme"
    echo -e   "9. \t vimiLight GTK Theme"


    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" themeSelection

case $themeSelection in

  1) bash $rootdir/submenus/ppaThemes.sh ;;

  2) bash $rootdir/submenus/macRelated.sh ;;

  3) bash $rootdir/submenus/numix.sh ;;

  4) bash $rootdir/submenu/manjarofy.sh ;;

  5) MintyThemes
     MintyIcons
     echo "installed Mint-Y"
     x=1
     ;;

  6)  gitArcThemes
      gitArcIcons
      gitArcOpenBox
      echo "installed Arc"
      x=1
      ;;

  7) win10 ;;

  8) vimiDarkGTK ;;

  9) vimiLightGTK ;;


  t) read -p "Please enter a URL:" testURL

     stripFileInfo $testURL ;;


  q) quitScript ;;

  *) invalidSection ;;

esac
