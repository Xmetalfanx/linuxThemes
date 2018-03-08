#!/bin/bash

. $functionsdir/import.cfg

#############################################

clear
echo -e "Xmetal's Linux Theming Script\n"

  echo -e "Please Select your choice \n"

  echo -e   "1. \t El Capitan GTK3 Theme"
  echo -e   "2. \t MacOS Sierra GTK3 Theme "

  echo -e   "q. \t Exit to Prompt \n\n"
  read -p   "Your Choice?:" themeSelection

  case $themeSelection in

    1) elCapitan ;;

    2) macOSSierra ;;

    q) exit ;;

  esac