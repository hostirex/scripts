echo 'Configuring SSH port...'
echo "SSH Port: Changing ssh port"
sed -i 's/#Port 22/Port 52157/g' /etc/ssh/sshd_config
echo 'SSH port has been changed to: 52157'
echo 'Updating iptables for new SSH port'
iptables -I INPUT -p tcp --dport 52157 --syn -j ACCEPT
service iptables save
service iptables restart
service sshd restart
