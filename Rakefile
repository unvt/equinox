task :world do
s = <<EOS
sudo true
sudo apt update
sudo apt upgrade
sudo apt install autoconf automake bash curl g++ git h2o htop libtool linux-headers make nginx nodejs npm openssh python ruby ruby-rake sqlite sqlite-dev tmux vim yarn zip zlib-dev 
git clone https://github.com/mapbox/tippecanoe
cd tippecanoe; make; make install; cd ..
rm -rf tippecanoe
yarn global add browserify budo hjson pm2 rollup @mapbox/mapbox-gl-style-spec @pushcorn/hocon-parser
git clone https://github.com/ibesora/vt-optimizer
cd vt-optimizer; npm install; cd ..
EOS
  s.split("\n").each {|l|
    sh l
  }
end

