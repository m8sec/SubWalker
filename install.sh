#!/usr/bin/env bash
# m8r0wn

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

mkdir -p ./tools
cd tools/
git clone https://github.com/aboul3la/Sublist3r
cd Sublist3r
pip3 install -r requirements.txt
cd ../

git clone https://github.com/m8r0wn/subscraper
cd subscraper
python3 setup.py install
cd ../

mkdir -p assetfinder
cd assetfinder
wget https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz
gunzip -c assetfinder-linux-amd64-0.1.1.tgz |tar xvf -
chmod +x assetfinder
