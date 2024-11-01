#!/bin/bash

# Import Functions 
readonly dir=$(eval pwd)
readonly functionsdir=$(eval pwd)/functions/

. $functionsdir/import.cfg

###############################################################
## get the distro used, calling quid's script
checkDistro2

## Why is this here anymore? 
distrobase=${osrelease#"ID_LIKE="}

x=1 

clear

while [ "$x" = "1" ]; do

  echo -e "Xmetal's Linux Theming Script\n"

  echo -e "Your distro appears to be ${distrobase} based"
  echo -e "\nIt APPEARS you distro is $distro "

    echo -e "Please Select your choice \n"

    echo -e   "1. \t SUB-MENU - MAC/Apple Related "
    echo -e   "2. \t SUB-MENU - Numix Themes and Icon Submenu"
    echo -e   "3. \t SUB-MENU - Manjaro-fy (Batch Manjaro Theme & Icon Install)"

    echo -e   "4. \t Mint-Y Theme and Icon Packs"
    echo -e   "5. \t Arc Theme and Icon Pack"
    echo -e   "6. \t Windows 10 GTK3 Theme"
    echo -e   "7. \t vimiDark GTK Theme"
    echo -e   "8. \t vimiLight GTK Theme"

    echo -e   "q. \t Exit to Prompt \n\n"
    read -r -p   "Your Choice?:" themeSelection

case $themeSelection in


  1)  bash $rootdir/submenus/macRelated.sh
      x=1
      ;;

  2) bash $rootdir/submenus/numix.sh
     x=1
      ;;

  3) manjarofy
     x=1
      ;;

  4) MintyThemes
     MintyIcons
     echo "installed Mint-Y"
     x=1
     ;;

  5)  
     
      x=1
      ;;

  6) win10 
    x=1
    ;;

  7) vimiDarkGTK 
    x=1
    ;;

  8) vimiLightGTK 
      x=1
      ;;

  t) read -r -p "Please enter a URL:" testURL

     stripFileInfo $testURL ;;


  q) quitScript ;;

  *) invalidSection ;;

esac

done 