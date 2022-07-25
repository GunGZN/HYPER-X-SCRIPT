#!/bin/bash
if [[ "$EUID" -ne 0 ]]; then
	echo ""
	echo "กรุณาเข้าสู่ระบบผู้ใช้ root ก่อนทำการใช้งานสคริปท์"
	echo "คำสั่งเข้าสู่ระบบผู้ใช้ root คือ sudo -i"
	echo ""
	exit
fi

if [[ ! -e /dev/net/tun ]]; then
	echo ""
	echo "TUN ไม่สามารถใช้งานได้"
	exit
fi


# Set Localtime GMT +7
ln -fs /usr/share/zoneinfo/Asia/Bangkok /etc/localtime

clear
# IP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
#if [[ "$IP" = "" ]]; then
IP=$(wget -4qO- "http://whatismyip.akamai.com/")
#fi
# Menu
echo ""
echo "=============== OS-32 & 64-bit =================    "
echo "#  OS  DEBIAN 8-9-10  OS  UBUNTU 14-16-18-20   #    "
echo "#         BY : Pirakit Khawpleum               #    "
echo "#    FB : https://m.me/pirakrit.khawplum       #    "
echo "=============== OS-32 & 64-bit =================    "
echo " ไอพีเซิฟ: $IP "
echo ""

	echo "FUNCTION SCRIPT MyGatherBK-VPN v.1"
	echo ""
	echo "|1| Install-ProxyServer"
	echo "|2| Restart/ProxyServer"
	echo ""
	echo ""
	read -p "Select a Function Script : " x

case $FUNCTIONSCRIPT in
if [[ "1" = "$x" ]]; then # ==================================================================================================================
clear
echo ""
echo "=============== OS-32 & 64-bit =================    "
echo "#  OS  DEBIAN 8-9-10  OS  UBUNTU 14-16-18-20   #    "
echo "#         BY : Pirakit Khawpleum               #    "
echo "#    FB : https://m.me/pirakrit.khawplum       #    "
echo "=============== OS-32 & 64-bit =================    "
echo " ไอพีเซิฟ: $IP "
echo ""
cd
echo ""
read -p "Port Proxy : " -e -i 8080 PROXY
echo ""
echo "{ Install PROXY DEBIAN 8-9-10/UBUNTU 14-16-18-20 }"|lolcat
echo ""
#Install squid
		
ins() {
apt-get -y install squid
				}
fun_bar 'ins'
if [[ -d "/etc/squid/" ]]; then
				var_sqd="/etc/squid/squid.conf"
				var_pay="/etc/squid/payload.txt"
			elif [[ -d "/etc/squid3/" ]]; then
				var_sqd="/etc/squid3/squid.conf"
				var_pay="/etc/squid3/payload.txt"
			else
				echo -e "\n\033[1;33m[\033[1;31mERRO\033[1;33m]\033[1;37m: \033[1;33mO SQUID PROXY CORROMPEU\033[0m"
				sleep 2
				fun_conexao
			fi
		cat > /etc/squid/squid.conf <<END
acl localhost src 127.0.0.1/32 ::1
acl to_localhost dst 127.0.0.0/8 0.0.0.0/32 ::1
acl localnet src 10.0.0.0/8
acl localnet src 172.16.0.0/12
acl localnet src 192.168.0.0/16
acl url1 dstdomain -i 127.0.0.1
acl SSL_ports port 443
acl Safe_ports port 80
acl Safe_ports port 21
acl Safe_ports port 443
acl Safe_ports port 70
acl Safe_ports port 210
acl Safe_ports port 1025-65535
acl Safe_ports port 280
acl Safe_ports port 488
acl Safe_ports port 591
acl Safe_ports port 777
acl CONNECT method CONNECT
acl SSH dst xxxxxxxxx-xxxxxxxxx/255.255.255.255
http_access allow SSH
http_access allow url1
http_access allow localnet
http_access allow localhost
http_access allow all
refresh_pattern ^ftp:           1440    20%     10080
refresh_pattern ^gopher:        1440    0%      1440
refresh_pattern -i (/cgi-bin/|\?) 0     0%      0
refresh_pattern .               0       20%     4320
END
#Portas" > $var_sqd
for Pts in $(echo -e $PROXY); do
echo -e "http_port $Pts" >> $var_sqd
[[ -f "/usr/sbin/ufw" ]] && ufw allow $Pts/tcp
done
echo -e "
#Nome squid
visible_hostname LiLGunX 
via off
forwarded_for off
pipeline_prefetch off" >> $var_sqd
		IP2="s/xxxxxxxxx/$IP/g";
		sed -i $IP2 /etc/squid/squid.conf;
sre() {
/etc/init.d/squid restart
/etc/init.d/openvpn restart
/etc/init.d/nginx restart
				}
echo -e "\n\033[1;32mRESTART SQUID PROXY\033[0m"
echo ""
fun_bar 'sre'


	clear
echo ""
echo "=============== OS-32 & 64-bit =================    "
echo "#  OS  DEBIAN 8-9-10  OS  UBUNTU 14-16-18-20   #    "
echo "#         BY : Pirakit Khawpleum               #    "
echo "#    FB : https://m.me/pirakrit.khawplum       #    "
echo "=============== OS-32 & 64-bit =================    "
echo " ไอพีเซิฟ: $IP "
echo ""
	echo "Squid Proxy,Install finish."
	echo "Port Proxy : $PROXY"
	echo ""
	echo ""
	echo ""
        sleep 2.5
exit
	2) # ==================================================================================================================
	
clear
echo ""
echo "=============== OS-32 & 64-bit =================    "
echo "#  OS  DEBIAN 8-9-10  OS  UBUNTU 14-16-18-20   #    "
echo "#         BY : Pirakit Khawpleum               #    "
echo "#    FB : https://m.me/pirakrit.khawplum       #    "
echo "=============== OS-32 & 64-bit =================    "
echo " ไอพีเซิฟ: $IP "
echo ""
if [[ ! -e /etc/squid/squid.conf ]]; then
			echo ""
			echo "	ยังไม่ได้ติดตั้ง Squid Proxy"
			echo ""
			exit
		else
			service squid start
			echo ""
			echo -e "	Squid Proxy ${GRAY}STARTED${NC}"
			echo ""
			exit
		fi
