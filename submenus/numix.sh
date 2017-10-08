/bin/bash
rootdir=$basedir

import= . "$rootdir"/functions/import.cfg
$import

  clear

  echo -e "Numix Theme SubMenu"
  echo -e "1. \t Install Numix Theme "
  echo -e "2. \t Install Numix Icon Theme "
  echo -e "3. (Future Idea) Numix Frost Theme "
  read -p   "Your Choice?:" choice

case $choice in

  1) numixThemes distro ;;

  2) numixIcon distro ;;

  q) exit ;;

esac
