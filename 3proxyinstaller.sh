apt-get update && apt-get -y upgrade
apt-get install -y build-essential nano
wget https://github.com/z3APA3A/3proxy/archive/0.8.12.tar.gz
tar xzf 0.8.12.tar.gz
cd 3proxy-0.8.12
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://github.com/spaceback/3proxy/raw/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
cd /etc/init.d/
wget --no-check-certificate https://raw.github.com/spaceback/3proxy/master/3proxyinit
chmod  +x /etc/init.d/3proxyinit
update-rc.d 3proxyinit defaults
