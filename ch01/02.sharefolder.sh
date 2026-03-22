sudo groupadd share
sudo mkdir /tmp/myshare
sudo chown :share /tmp/myshare
sudo chmod g+ws,o-rwx /tmp/myshare
sudo chmod o+t /tmp/myshare

