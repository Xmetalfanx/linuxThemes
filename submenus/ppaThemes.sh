#!/bin/bash

. $functionsdir/import.cfg


  clear

  echo -e "Theme PPA Menu"
  echo -e "1. \t Install Mass PPAs for Trusty aka 14.04 LTS "
  echo -e "2. \t Install a number themes that are highly rated "
  read -r -p   "Your Choice?:" choice

case $choice in

  1) addThemePPAsTrusty ;;

  2) PPAThemesTrusty ;;

  q) exit ;;

esac
