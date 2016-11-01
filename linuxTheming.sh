baseFunctions= . /functions/f_themes.cfg
$baseFunctions

pManagerFunction= . /functions/f_packageManager.cfg
$pManagerFunction

themeFunction= . /functions/f_themes.cfg
$themeFunction

## get the distro used, calling quid's script
getDistro

mainMenu



fuction mainMenu
{
clear

    echo -e "Xmetal's Linux Theming Script \n"
    echo -e "Please Select your choice \n"

    echo -e   "1. \t Numix Themes"
    echo -e   "2. \t Numix Icon Themes"

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" themeSelection

case $themeSelection in

  1) numixThemes ;;

  2) numixIcon ;;

  q) # quit

esac
}
