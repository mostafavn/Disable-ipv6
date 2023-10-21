BWhite='\033[1;37m'
NC='\033[0m'

echo "net.ipv6.conf.all.disable_ipv6=1
net.ipv6.conf.default.disable_ipv6=1
net.ipv6.conf.lo.disable_ipv6=1" >> /etc/sysctl.conf

sysctl -p

clear

echo "#!/bin/bash
# /etc/rc.local
/etc/sysctl.d
/etc/init.d/procps restart
exit 0" >> /etc/rc.local

chmod 755 /etc/rc.local

clear

echo -e "\n\n${BWhite}ipv6 is disabled on your server${NC}\n\n"