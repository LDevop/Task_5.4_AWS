missing sudo password:
in remotely instance add user in /etc/sudoers.d/denis 
add string: denis ALL=(ALL) NOPASSWD: ALL

enable port firewall in centos 7:
1. firewall-cmd --get-active-zones
2. firewall-cmd --zone=public --add-port=80/tcp --permanent
3. firewall-cmd --reload