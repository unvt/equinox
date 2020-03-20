apt update
apt -y upgrade
curl -sL https://deb.nodesource.com/setup_13.x | bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -    
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt install -y autoconf automake git libsqlite3-dev libtool linux-headers nginx nodejs ruby sqlite tmux vim yarn zip 
git clone https://github.com/mapbox/tippecanoe
cd tippecanoe; make -j3 LDFLAGS="-latomic"; make install; cd ..
rm -rf tippecanoe
yarn global add browserify budo hjson pm2 rollup @mapbox/mapbox-gl-style-spec @pushcorn/hocon-parser
git clone https://github.com/ibesora/vt-optimizer
cd vt-optimizer; npm install; cd ..

