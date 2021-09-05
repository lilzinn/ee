#!bin/bash
pkg update -y
pkg upgrade -y

CYAN="\033[1;36m"
YELLOW="\033[1;33m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

echo $YELLOW"Tudo certo, posso procegrir? [s/n]"
read -p "> " opts

if [ $opts = "s" ]; then

clear
echo $YELLOW"Atualizando o brizas orion, aguarde..."
git clone https://github.com/lilzinn/ee > /dev/null 2> /dev/null

cd ee
cp -r * ..
cd ..
rm -rf ee
npm i

clear
echo $GREEN"Atualizando o bot!!"

elif [ $opts = "n"]; then
    clear
    echo $RED"Sucesso!!"
    exit
fi
