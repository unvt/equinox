sudo apt update
sudo apt -y upgrade
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -    
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y autoconf automake cmake gdal-bin git libsqlite3-dev libtool raspberrypi-kernel-headers nginx nodejs osmium-tool parallel ruby sqlite3 tmux vim xrdp yarn zip 
sudo service xrdp restart
git clone https://github.com/mapbox/tippecanoe
cd tippecanoe; make -j3 LDFLAGS="-latomic"; sudo make install; cd ..
rm -rf tippecanoe
sudo yarn global add browserify budo hjson pm2 rollup @mapbox/mapbox-gl-style-spec @pushcorn/hocon-parser
git clone https://github.com/ibesora/vt-optimizer
cd vt-optimizer; npm install; cd ..
sudo gem install mdless hocon
wget -O insider.deb https://update.code.visualstudio.com/latest/linux-deb-armhf/insider
sudo apt install ./insider.deb
rm ./insider.deb
