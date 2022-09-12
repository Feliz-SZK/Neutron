red=`tput setaf 1`
green=`tput setaf 2`
blue=`tput setaf 4`
cyan=`tput setaf 6`
reset=`tput sgr0`

binary="neutron"



if [ $(id -u) -ne 0 ]; then
	echo "${red}You gotta be a Superuser, run with 'sudo'${reset}"
	exit 1
fi

clear

echo "${cyan}******* Neutron Uninstaller ********${reset}"

if ! command -v ${binary} > /dev/null; then
  echo "${red}\nneutron isn't installed.\n${reset}"
  exit 1
fi

echo "${green}\n>>>>> Cleaning up remnants.... ${reset}"
neutron -e > /dev/null 2>&1
sleep 1
echo "${green}>>>>> Removing neutron binary...."
/usr/bin/rm /usr/bin/neutron
sleep 1
echo "${blue}\n>>>>>Uninstalling Complete<<<<<${reset}\n"
