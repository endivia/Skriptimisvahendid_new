#!/bin/bash
echo "Sisesta kataalogi nimi  (täis teega)millest soovid backupi teha:"
read kaust
echo "Sisesta kataalogi nimi  (täis teega)millest soovid backupi panna:"
read sihtkaust
sihtkaust ="/home_bacup"
echo "Loon katalogi kuhu parast panen tehtud bacup"
"mkdir  ´$sihtkaust`
sleep  3
ls -ld  `$sihtkaust
sleep 3
echo "Praegune asukoht (koht kus skript $0kaivitatud):"
sleep 3
echo ´pwd´
sleep 3
echo "Vahetan asukoha  -lähen sinna kus asub backup_imisekskataloogid ,ehk siia: "
sleep 3
cd ´echo $lahtekaust´
sleep 3
for filename in $(ls $lahtekaust) ; do
	if [ -f $filename  ]; then 
	result ="$filename  is  a regular file"
	echo "$result "
else
if  [ -d $filename  ]; then 
result ="$filename is a directory Do  BACKUP! "
echo "$result "
#arhiveerimise kasud
kuupaev=´date +%d. %m. %Y´ echo "$kuupaev echo "$lahtekaust$filename/" tar -c -f $filename.$kuupaev.tar $filename/ gzip 
$filename.$kuupaev.tar 
mv $filename.$kuupaev.tar.gz $sihtkaust 
sleep 3
 echo "Sai tehtud BACKUP kataalogist $filename ja ta asub kataloogis $sihtkaust: "
ls -l ´echo $sihtkaust$filename.$kuupaev.tar.gz
	fi
fi
´
done
