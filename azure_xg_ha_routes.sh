# Prompt the admin to enter the Azure gateway IPs of the ports
read -p 'Please enter the Azure gateway IP of PortA (LAN) : ' portagw
read -p 'Please enter the Azure gateway IP of PortB (WAN) : ' portbgw

# Create a temporary zebra configuration file
touch /tmp/zebraman.conf

# Write the two static routes into the config file
cat >/tmp/zebraman.conf <<EOL
!
! ZEBRA configuration file
!
hostname router
log stdout
line vty
no login
ip route 168.63.129.16/32 $portagw PortA
ip route 168.63.129.16/32 $portbgw PortB
!
EOL

# Kill existing zebra process and restart it with the temporary zebra config file
killall zebra
zebra -f /tmp/zebraman.conf > /dev/null &

# Reboot the appliance
reboot