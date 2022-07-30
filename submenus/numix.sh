#!/bin/bash

. $functionsdir/import.cfg

clear

  echo -e "Numix Theme SubMenu"
  echo -e "1. \t Install Numix Theme "
  echo -e "2. \t Install Numix Icon Theme "
  echo -e "3. (Future Idea) Numix Frost Theme "
  read -r -p   "Your Choice?:" choice

case $choice in

  1) numixThemes distro ;;

  2) numixIcon distro ;;

  q) exit ;;

esac
