#!/usr/bin/env bash

if [[ $(id -u) != 0 ]]; then
    echo -e "\n[!] Install.sh requires root privileges"
    exit 0
fi

apt-get update
apt-get install golang -y
apt-get install gunzip -y
apt-get install zip -y
apt-get install git -y
apt-get install python3-pip
apt-get install nmap

mkdir -p ./tools
cd tools/
git clone https://github.com/aboul3la/Sublist3r
cd Sublist3r
pip3 install -r requirements.txt
cd ../

mkdir -p assetfinder
cd assetfinder
wget https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz
gunzip -c assetfinder-linux-amd64-0.1.1.tgz |tar xvf -
chmod +x assetfinder

mkdir -p subjack
cd subjack
go get github.com/haccer/subjack
cd ../

mkdir -p httprobe
cd httprobe
go install github.com/tomnomnom/httprobe@latest
apt-get install httprobe
cd ../

mkdir -p amass
cd amass
apt-get install amass
cd ../

mkdir -p eyewitness
cd eyewitness
apt-get install eyewitness
cd ../

echo ""
echo -e "\e[1;32m Installation Complete! \e[0m"