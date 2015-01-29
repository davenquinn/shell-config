brew update
brew install nginx
brew install dnsmasq

sudo touch /usr/local/etc/dnsmasq.conf
sudo echo "address=/.dev/127.0.0.1" >> /usr/local/etc/dnsmasq.conf

sudo cp -fv /usr/local/opt/dnsmasq/*.plist /Library/LaunchDaemons
sudo cp -fv /usr/local/opt/nginx/*.plist /Library/LaunchDaemons
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist

sudo mkdir -p /etc/resolver
sudo touch /etc/resolver/dev
sudo echo "nameserver 127.0.0.1" >> /etc/resolver/dev
