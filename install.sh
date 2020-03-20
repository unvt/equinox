sudo true
sudo apt update
sudo apt --allow-change-held-packages upgrade
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -    
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt upgrade
sudo apt install --allow-change-held-packages autoconf automake git h2o libsqlite3-dev libtool linux-headers nodejs ruby sqlite tmux vim yarn zip 
git clone https://github.com/mapbox/tippecanoe
cd tippecanoe; make -j3 LDFLAGS="-latomic"; make install; cd ..
rm -rf tippecanoe
yarn global add browserify budo hjson pm2 rollup @mapbox/mapbox-gl-style-spec @pushcorn/hocon-parser
git clone https://github.com/ibesora/vt-optimizer
cd vt-optimizer; npm install; cd ..

