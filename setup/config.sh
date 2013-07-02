# install configuration files
rsync -r /vagrant/setup/root/ /

# install core packages
apt-get -y update
apt-get --no-install-recommends -y install build-essential git-core g++
apt-get --no-install-recommends -y install openssl chrpath libssl-dev libfontconfig1-dev libglib2.0-dev libx11-dev libxext-dev libfreetype6-dev libxcursor-dev libxrandr-dev libxv-dev libxi-dev libgstreamermm-0.10-dev xvfb
apt-get -y install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev

#xvfb
apt-get install -y x11-xkb-utils xserver-xorg-core xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic
apt-get install -y xvfb

# launch xvfb
pids=$(pidof /usr/bin/Xvfb)
if [ -n "$pids" ]; then
	echo "Xvfb is already running"
else
	echo "launch Xvfb"
	Xvfb :0 -screen 0 1024x768x24 &
fi