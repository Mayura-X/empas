trap 'store; exit 1;' 2
threads="20"
r="\033[31;1m"
y="\033[33;1m"
yl="\033[1;33m"
g="\033[0;32m"
gl="\033[32;1m"
b="\033[0;36m"
bl="\033[36;1m"
c="\033[36;1m"
p="\033[0;35m"
o="\033[0m"
cek(){
command -v wget > /dev/null 2>&1 || { echo >&2 " [!] wget belum terinstall ketik >> pkg install wget -y .....lalu ketik bash ml.sh"; exit 1; }
command -v pv > /dev/null 2>&1 || { echo >&2 " [!] pv belum terinstall ketik >> pkg install pv -y .....lalu ketik bash ml.sh"; exit 1; }
}
mulai (){
wget https://raw.githubusercontent.com/users002/Headers-banner-bukanmain-crott-dahsampesini/main/empass -o done
for anjay in $(shuf empass)
do
echo "$anjay"
sleep 0.3
done
}
empas-fresh (){
wget https://raw.githubusercontent.com/users002/Headers-banner-bukanmain-crott-dahsampesini/main/empas-fresh -o done
for anjayy in $(shuf empas-fresh)
do
echo "$anjayy"
sleep 0.3
done
}
empas-uncheck (){
wget https://raw.githubusercontent.com/users002/Headers-banner-bukanmain-crott-dahsampesini/main/empas-uncheck -o done
for anjayyy in $(shuf empas-uncheck)
do
echo "$anjayyy"
sleep 0.3
done
}
empas-moontod(){
wget https://raw.githubusercontent.com/users002/Headers-banner-bukanmain-crott-dahsampesini/main/empas-monton -o done
for anjayyyy in $(shuf empas-monton)
do
echo "$anjayyyy"
sleep 0.3
done
}
function stor() {
if [[ -n "$threads" ]]; then
printf "\n"
printf "\e[1;91m [*] Waiting threads shutting down...\n\e[0m"
sleep 4
fi
}
function store() {
if [[ -n "$threads" ]]; then
printf "\n"
printf "\e[1;91m [*] Memutuskan program tunggu...\n\e[0m"
rm -rf empass
rm -rf done
rm -rf empas-fresh
rm -rf empas-monton
rm -rf empas-uncheck
sleep 2
echo -e "${g}Selesai${o}"
exit
fi
}
menu(){
clear
echo -e """
$g
________________________________________
    _____                               
    /    '                              
---/__-------_--_-------__-----__----__-
  /         / /  )    /   )  /   )  (_ 
_/____ ____/_/__/____/___/__(___(__(__)_
                    /                   
                   /""" | pv -qL 600
echo -e "${o}"
echo -e "${o} [${g}1${o}] Update Script${o}" | pv -qL 600
echo -e "${o} [${g}2${o}] Langsung Cari Empas${o}" | pv -qL 600
echo -e "${o} [${g}3${o}] Langsung Cari Empas Fresh${o}" | pv -qL 600
echo -e "${o} [${g}4${o}] Langsung Cari Empas Uncheck${o}" | pv -qL 600
echo -e "${o} [${g}5${o}] Langsung Cari Empas Moonton${o}" | pv -qL 600
echo ""
read -p $' [•] pilih: ' pilihan
if [[ $pilihan == 1 ]]; then
git pull origin master
exit
elif [[ $pilihan == 2 ]]; then
mulai
elif [[ $pilihan == 3 ]]; then
empas-fresh
elif [[ $pilihan == 4 ]]; then
empas-uncheck
elif [[ $pilihan == 5 ]]; then
empas-moontod
else
echo -e "${r}Pilih yang ada aja njeng"
banner
menu
fi
}
menu
