function ManjaroNumixRebornTheme
{
# Issues - can not move cding into wrong directory?
echo "Installing Components of Manjaro's Numix Reborn Theme"
git clone https://github.com/manjaro/artwork-numix-reborn-manjaro-themes.git
cd artwork-numix-manjaro-themes-master

    mkdir ~/.icons/NumixReborn-Icons
    mv /icon-theme/* ~/.icons/NumixReborn-Icons

    mkdir ~/.icons/Menda-Cursor
    mv Menda-Cursor ~/.icons

    mkdir ~/.theme/Numix-Reborn
    mv Numix-Reborn ~/.themes

    mkdir ~/Pictures/ManjaroWallpapers
    mv /wallpapers/ ~/.pictures/ManjaroWallpapers

    cd ..
    #rm -rf artwork-numix-manjaro-themes
    read -p "Pause for Debugging"
}

function ManjaroNumixTheme
{
echo "Installing Manjaro's Numix Theme"
    git clone https://github.com/manjaro/artwork-numix-manjaro-themes.git
    cd artwork-numix-manjaro-themes
    mv Numix-Manjaro ~/.themes
    cd ..
    rm -rf artwork-numix-manjaro-themes
}


function GreenBirdTheme
{
echo "Installing GreenBird Theme"
    git clone https://github.com/manjaro/artwork-greenbird.git
    cd artwork-greenbird
    mkdir ~/.themes/GreenBird
    mv * ~/.themes/GreenBird
    cd ..
    rm -rf artwork-greenbird
}

function oldMendaManjaroIcons
{
echo "Installing the Menda Icon Themes"
  git clone https://github.com/manjaro/menda-icon-themes.git
  cd menda-icon-themes
  mv Menda-Circle ~/.icons
  cd ..
  rm -rf menda-icon-themes
  read -p "Pause for Debugging"
  clear
}

function oldMendaManjaroTheme
{
  echo "Installing the Menda Themes"
      git clone https://github.com/manjaro/artwork-menda.git
      cd artwork-menda
      mv Menda* ~/.themes
      cd ..
      rm -rf artwork-menda
}
