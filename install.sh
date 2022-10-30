cd $HOME
sudo apt update
sudo apt -y upgrade
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y autoconf automake cmake code gdal-bin git gpsd gpsd-clients gpsd-tools libsqlite3-dev libtool raspberrypi-kernel-headers nginx nodejs osmium-tool parallel pdal ruby sqlite3 tmux unar vim xrdp yarn zip 
sudo service xrdp restart
git clone https://github.com/felt/tippecanoe
cd tippecanoe; make -j3 LDFLAGS="-latomic"; sudo make install; cd ..
rm -rf tippecanoe
sudo yarn global add browserify budo hjson pm2 rollup @mapbox/mapbox-gl-style-spec @pushcorn/hocon-parser
git clone https://github.com/ibesora/vt-optimizer.git
cd vt-optimizer; npm install; cd ..
git clone https://github.com/unvt/charites.git
cd charites; npm install; npm run build; sudo npm install --global .; cd ..
rm -fr charites
