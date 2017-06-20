SYSINFO=`head -n 1 /etc/issue`
IFS=$'\n'
UPTIME=`uptime`
D_UP=${UPTIME:1}
MYGROUPS=`groups`
DATE=`date`
KERNEL=`uname -a`
CPWD=`pwd`
ME=`whoami`
CPU=`arch`

printf "=== SİSTEM ===\n"
printf "  Dağıtım:\t"$SYSINFO"\n"
printf "  Çekirdek:\t"$KERNEL"\n"
printf "  Uptime:\t"$D_UP"\n"
free -ht | awk '
/Mem/{print "  Bellek:\tToplam: " $2 "\tKullanılan: " $3 "\tBoş: " $4 }
/Swap/{print "  Swap:\t\tToplam: " $2 "\tKullanılan: " $3 "\tBoş: " $4 }'
printf "  Mimari:\t"$CPU"\n"
cat /proc/cpuinfo | grep "model name\|processor" | awk '
/processor/{printf "  İşlemci:\t" $3 " : " }
/model\ name/{
i=4
while(i<=NF){
	printf $i
	if(i<NF){
		printf " "
	}
	i++
}
printf "\n"
}'
printf "  Tarih:\t\t"$DATE"\n"
printf "\n=== KULLANICI ===\n"
printf "  Kullanıcı:\t\t"$ME" (uid:"$UID")\n"
printf "  Gruplar:\t"$MYGROUPS"\n"
printf "  Ev dizini:\t"$HOME"\n"
printf "\n=== AĞ ===\n"
printf "  Hostname:\t"$HOSTNAME"\n"
ip -o addr | awk '/inet /{print "  IP Adresi (" $2 "):\t" $4}'
/sbin/route -n | awk '/^0.0.0.0/{ printf "  Gateway:\t"$2"\n" }'
cat /etc/resolv.conf | awk '/^nameserver/{ printf "  Name Server:\t" $2 "\n"}'