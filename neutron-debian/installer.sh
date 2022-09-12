red=`tput setaf 1`
green=`tput setaf 2`
blue=`tput setaf 4`
cyan=`tput setaf 6`
reset=`tput sgr0`

if [ $(id -u) -ne 0 ]; then
	echo "${red}You gotta be a Superuser, run with 'sudo'${reset}"
	exit 1
fi


clear
echo "${cyan}******* Neutron installer ********${reset}"
echo " "
echo "${green} >>>>> Installing Modules ${reset}"
sudo apt-get update -y
sudo apt-get install tor -y
sleep 0.5
echo "${green} >>>>> Installing Neutron${reset}"
yes | cp neutron /usr/bin/neutron
sudo chmod +x /usr/bin/neutron
sleep 0.5
echo "${green}:::::::: [Done] :::::::: ${reset}"
sleep 0.5
echo " >>>>>${blue} Open your terminal and type in 'neutron -h' for usage${reset}"
