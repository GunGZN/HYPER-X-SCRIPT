#!/bin/bash
#test os22
if [[ -e /etc/debian_version ]]; then
	OS=debian
	VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
	GROUPNAME=nogroup
	RCLOCAL='/etc/rc.local'
fi
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="23.04"' ]]; then
apt install lolcat
apt install figlet -yy
apt install dos2unix -yy
fi
########################################################################
if [[ "$VERSION_ID" = 'VERSION_ID="100.04"' ]]; then
echo -e "      \033[1;33m Ubuntu 18.04 \033[0m"
apt update
apt install ruby-full -yy 
gem install lolcat
apt install python3 -yy
apt install figlet -yy
apt install dos2unix -yy
 
fi
########################################################################
if [[ "$VERSION_ID" = 'VERSION_ID="200.04"' ]]; then
echo -e "      \033[1;33mUbuntu 20.04\033[0m"
apt update
apt install ruby-full -yy 
apt install python3 -yy
gem install lolcat 
apt install figlet -yy
apt install dos2unix -yy

fi
########################################################################

echo -e "      \033[1;33mUbuntu 22.04\033[0m"
apt update
apt install ruby-full -yy 
apt install python3 -yy
gem install lolcat 
apt install figlet -yy
apt install dos2unix -yy
apt install ruby-full -yy 

########################################################################

echo -e " \033[1;31m➤ figlet \033[0m"
apt install figlet -yy  -q > /dev/null 2>&1
apt install ruby-full -yy -q > /dev/null 2>&1
gem install lolcat -q > /dev/null 2>&1

echo -e " \033[1;31m➤ dos2unix \033[0m"
apt install dos2unix -yy  -q > /dev/null 2>&1

echo -e " \033[1;31m➤ curl \033[0m"
apt install curl -yy  -q > /dev/null 2>&1

echo -e " \033[1;31m➤ netstat \033[0m"
apt install netstat -yy  -q > /dev/null 2>&1

rm -f Test
rm -f screenfetch

cd /bin/bash /etc/openvpn
rm -f .profile
# Running screenfetch xxxxx

apt install neofetch -yy

apt-get install vnstat -yy 
systemctl start vnstat.service 


 
 echo "Test-X Script" >> .profile
 echo "clear" >> .profile
 echo "neofetch" >> .profile

scrip="https://raw.githubusercontent.com/tokssa/SAVAT/master"
clear
cd /usr/bin
wget -q -O cr "https://raw.githubusercontent.com/LiLGun-X/HYPER-X-SCRIPT/main/INSTALL/cr"
chmod +x /usr/bin/cr
if [[ $(id -g) != "0" ]] ; then
    echo ""
    echo "Script : สั่งรูทคำสั่ง [ sudo -i ] ก่อนรันสคริปนี้  "
    echo ""
    exit
fi
zenon=$2

if [[  ! -e /dev/net/tun ]] ; then
    echo "Script : TUN/TAP device is not available."
fi
cd
if [[ -e /etc/debian_version ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi
if [[ -e /etc/yum ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi
IP=$(wget -qO- ipv4.icanhazip.com);
if [[ $zenon == "" ]]
then
clear

cd
rm -f Version
clear
v1=$(curl -sSL "https://raw.githubusercontent.com/khaledagn/VPS-AGN_English_Official/master/SCRIPT-v8.5x/Version")

echo ""
echo "          ░▒█░▒█░▒█░░▒█░▒█▀▀█░▒█▀▀▀░▒█▀▀▄░░░░▀▄░▄▀"|lolcat
echo "          ░▒█▀▀█░▒▀▄▄▄▀░▒█▄▄█░▒█▀▀▀░▒█▄▄▀░▀▀░░▒█░░"|lolcat
echo "          ░▒█░▒█░░░▒█░░░▒█░░░░▒█▄▄▄░▒█░▒█░░░░▄▀▒▀▄"|lolcat
echo "                                            𝙎𝘾𝙍𝙄𝙋𝙏"
echo -e "\033[1;34m╔════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\033[1;34m║ \E[5;34;47m                     Hyper-X-SCRIPT $v1                      \E[0m \033[1;34m║"
echo -e "\033[1;34m╠════════════════════════════════════════════════════════════╣\033[0m"
echo -e "\033[1;34m║          \033[1;37mSCRIPT ใช้ติดตั้งOPENVPN & SSH & V2RAY\033[1;34m            ║"
echo -e "\033[1;34m║          \033[1;37mระบบOSที่รองรับ Ubuntu & Debian \033[1;34m    ║"
echo -e "\033[1;34m║          \033[1;37m(แนะนำเวอร์ชั่น) Ubuntu 18 & Debian 8-9 \033[1;34m    ║"
echo -e "\033[1;34m║          \033[1;37mหากพบปํญหา\033[1;34m                         ║"
echo -e "\033[1;34m║          \033[1;37mติดต่อ-@Line gzn007\033[1;34m                         ║"
echo -e "\033[1;34m╠════════════════════════════════════════════════════════════╝\033[0m"
echo -ne "\033[1;34m╚═══\033[1;33m[ \033[1;31mใส่รหัสผ่าน\033[1;34m\033[1;33m]\033[1;34m══┳══\033[1;31m┫"; read P
wget -q -O /usr/bin/pass https://raw.githubusercontent.com/Lil-Gun-X/HYPER-X-SCRIPT/main/Modulos/pass.txt
if ! grep -w -q $P /usr/bin/pass; then
clear
echo ""
echo ""
echo -e "\033[1;34m╔═════════════════════════════════════════════════════╗\033[0m"
echo -e "\033[1;34m║ \E[5;34;47m                 รหัสผิดไอ้โง่                       \E[0m \033[1;31m║"
echo -e "\033[1;34m║ \E[5;34;47m               Line : gzn007                       \E[0m \033[1;31m║"
echo -e "\033[1;34m╠════════════════════════════════════════════════════╣\033[0m"
echo " เสียใจด้วย รหัสผิด ถ้าไม่มีรหัสติดต่อแอดมินฯ"
rm /usr/bin/pass
exit
fi
echo -e "\033[1;34m              ╔═════┻═════════════════════════════════╗"
echo -e "\033[1;34m              ║ \033[1;31mแน่ใจคุณต้องการรันระบบ OpenVPN             \033[1;34m║" 
echo -e "\033[1;34m              ╠═══════════════════════════════════════╝"
read -p "$(echo -e "\033[1;34m              ╰━━ \033[1;33m[Y/N]:\033[1;37m ")" -e -i Y Y
    if [[ "$Y" = "y" || "$Y" = "Y" ]]; then
wget -q -O install "https://raw.githubusercontent.com/LiLGun-X/HYPER-X-SCRIPT/main/INSTALL/install"
bash install
exit
elif [[ "$Confirn" = "n" || "$Confirn" = "N" ]]; then
clear
clear
wget -O install "https://raw.githubusercontent.com/tokssa/SAVAT/master/install"
bash install
fi
fi
