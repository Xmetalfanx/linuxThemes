#Title : Manjaro Theme and Icon Installer
#Description : This script installs the MANY of the common themes/icons/cursors found (or use to be found) in Manjaro
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-06
#Version: v0.5
#Usage 	: bash manjarofy.sh

rootdir=$basedir

manjaroMass= . "$rootdir"/functions/github/manjaro/f_ManjaroCurrent.cfg
$manjaroMass

###################################################

echo "Xmetal's Manjaro-afication Script\n"

## themes
VertexTheme
ArtworkMaiaThemes
MaiaGTKThemes
vertexManjaroTheme

# Icons
#VertexMaiaIcon

#cursors
## Which one to use?
#maiaCursor
#maiaCursor
