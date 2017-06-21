
## Keep this one for icons, wallpapers, and cursors but remove theme part
function ManjaroNumixRebornTheme
{
echo "Installing Components of Manjaro's Numix Reborn Theme"
git clone https://github.com/manjaro/artwork-numix-reborn-manjaro-themes.git
cd artwork-numix-manjaro-themes-master

    mkdir ~/.icons/NumixReborn-Icons
    mv /icon-theme/* ~/.icons/NumixReborn-Icons

    mkdir ~/.icons/Menda-Cursor
    mv Menda-Cursor ~/.icons

    mkdir ~/Pictures/ManjaroWallpapers
    mv /wallpapers/ ~/.pictures/ManjaroWallpapers

    cd ..
    #rm -rf artwork-numix-manjaro-themes
    read -p "Pause for Debugging"
}


function oldMendaManjaroIcons
{

  ## Keeping for now, since ... unlike themes ... icons may be old but they shouldn't break
  echo "Installing the Menda Icon Themes"
  git clone https://github.com/manjaro/menda-icon-themes.git
  cd menda-icon-themes
  mv Menda-Circle ~/.icons
  cd ..
  rm -rf menda-icon-themes
  read -p "Pause for Debugging"
  clear
}
