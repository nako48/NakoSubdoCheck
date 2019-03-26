#!/bin/bash
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m' 
PUR='\033[0;35m'
GRN="\e[32m"
WHI="\e[37m"
NC='\033[0m'
echo ""
printf "$RED           ####################################    $GRN\n"
printf "$RED           ####################################    $GRN\n"
printf "$RED           #######                      #######    $GRN\n"
printf "$RED           #######                      #######    $GRN\n"
printf "$RED           ####### www.tatsumi-crew.net #######        \n"
printf "$RED           ###############      ###############        \n"
printf "$RED           ###############      ###############        \n"
printf "$RED           ###############      ###############        \n"
printf "$WHI           ###############      ###############        \n"
printf "$WHI           #######    ####      ####    #######        \n"
printf "$WHI           #######    ####      ####    #######        \n"
printf "$WHI           #######    ##############    #######        \n"
printf "$WHI           #######                      #######        \n"
printf "$WHI           ####################################        \n"
printf "$WHI           ####################################        \n"
printf "$NC           ------------------------------------        \n"  
printf "$NC             Subdomain Check - V02 NakoCoders             \n"  
printf "$NC           ------------------------------------        \n"  
cat <<EOF
EOF
ayocek(){
	cek=$(curl -s -o /dev/null -w "%{http_code}" "http://$1.$2")
	if [[ $cek = "000" ]]; then
		printf "http://$1.$2 TIDAK ADA\n"
	else
		printf "http://$1.$2/ => MENEMUKAN\n"
		echo "http://$1.$2/ => MENEMUKAN"
	fi
}
echo ""
echo "List In This Directory : "
ls
echo -n "Masukan File List Subdomain : "
read list
if [ ! -f $list ]; then
	echo "$list No Such File"
	exit
fi
read -p "Masukan Url Target : " dom
x=$(gawk '{ print $1 }' $list)
IFS=$'\r\n' GLOBIGNORE='*' command eval  'sub=($x)'
for (( i = 0; i < "${#sub[@]}"; i++ )); do
	subdomain="${sub[$i]}"
	ayocek $subdomain $dom
done
