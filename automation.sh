#!/bin/bash
echo "deb http://fr.archive.ubuntu.com/ubuntu/ focal universe multiverse" | tee /etc/apt/sources.list
echo "deb http://fr.archive.ubuntu.com/ubuntu/ focal main restricted" | tee /etc/apt/sources.list
apt update
apt upgrade
cd ~
wget https://github.com/maxencesylv/msylvconf/blob/main/competition-point-montagne.tar.gz?raw=true -O  script.tar.gz
tar -xf script.tar.gz
wget https://bootstrap.pypa.io/get-pip.py -O get-pip.py
python3 get-pip.py
pip install requests
pip install beautifulsoup4
pip install mysql-connector-python
rm -rf /usr/local/bin/npm /usr/local/share/man/man1/node* ~/.npm
rm -rf /usr/local/lib/node*
rm -rf /usr/local/bin/node*
rm -rf /usr/local/include/node*
apt-get purge nodejs npm
apt autoremove
wget https://nodejs.org/dist/v18.12.1/node-v18.12.1-linux-x64.tar.xz -O node-v18.12.1-linux-x64.tar.xz
tar -xf node-v18.12.1-linux-x64.tar.xz
mv node-v18.12.1-linux-x64/bin/* /usr/local/bin/
mv node-v18.12.1-linux-x64/lib/node_modules/ /usr/local/lib/
node -v
npm -v
cd competition-point-montagne
