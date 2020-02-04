if [ $(id -u) -ne 0 ]; then
	echo "This script must be ran as root"
	exit 1
fi

clear

echo " "
echo "******* Neutron installer ********"
echo " "
echo " >>>>> Installing Modules "
sudo apt-get install tor -y -qq
sudo apt-get install resolvconf -y -qq
sleep 0.5
echo " >>>>> Installing Neutron"
sudo cp neutron /usr/bin/neutron
sudo chmod +x /usr/bin/neutron
sleep 0.5
echo ":::::::: [Done] :::::::: "
sleep 0.5
echo " >>>>> Fire up your terminal and type in 'neutron' for usage"
