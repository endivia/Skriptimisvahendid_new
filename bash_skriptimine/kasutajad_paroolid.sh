kasutaja1:parool1
kasutaja2:parool2
kasutaja3:parool3

#kasutajate lisamise skript
if  [$# -ne  1 ]; then
	echo "Kasutusjuhend : $0  failinimi
else 
	failinimi =$1
if [ -f $failinimi -a -r $failinimi ] ;then
	echo "fail on korras"
for rida in $(cat $failinimi)
do
#sellega peaks faili sisu olema nahtav ,kui fail on katte saadav ja nuud echo asemel tuleb kutsuda vajalik skript
kasutajanimi=$(echo "$rida" | cut f1
-d:)
sh lisa_kasutaja $kasutajanimi
echo "$rida" | chpasswd # antud rida võimaldab kasutajale maarata vastav parool
done
else
echo "probleem failiga $failinimi"
fi
#paraametrite kontroll lopp
