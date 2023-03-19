cat << EOC
Do you want to install samba (Yes/No)?
EOC
read -sn1 answer

case ${answer} in
	[yY]|[yY][eE][sS])
		sudo yum install -y samba ;;
	[nN]|[nN][oO])
		echo "You canceled installing samba";;
esac

echo
cat <<- EOC
You should add the user, educafe to samba. Please press Enter (password is 'centos') ! 
EOC
read 
# smbpasswd -a educafe
echo -ne "centos\ncentos" | sudo smbpasswd -a -s $(whoami)

echo
cat <<- EOC
You should configure samba on /etc/samba/smb.conf (Yes/No) ? 
EOC

read -sn1 answer
case ${answer} in
	[yY]|[yY][eE][sS])
		echo "[Share]" | sudo tee -a /etc/samba/smb.conf 
		echo "path=/home/$(whoami)/" | sudo tee -a /etc/samba/smb.conf 
		echo "browseable=Yes" | sudo tee -a /etc/samba/smb.conf 
		echo "writeable=Yes" | sudo tee -a /etc/samba/smb.conf 
		echo "only guest=no" | sudo tee -a /etc/samba/smb.conf 
		echo "create  mask=0664" | sudo tee -a /etc/samba/smb.conf 
		echo "directory mask=0775" | sudo tee -a /etc/samba/smb.conf 
		echo "public=no" | sudo tee -a /etc/samba/smb.conf 
		;;
	[nN]|[nN][oO])
		echo "The prompt remain unchanged";;
esac

echo
cat <<- EOC
Now samba is ready for use. You should restart samba service.
Please press Enter to restart samba service.  
EOC

read
sudo systemctl start smb
sudo systemctl enable smb

echo
