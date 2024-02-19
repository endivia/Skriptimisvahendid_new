#!/bin/bash
#reisi korraldamine
#inimeste andmed
echo -n "Sisesta reisijate arv: "
read reisijad 
#kohtade andmed busssis
echo -n "Sisesta kohtade arv bussis:"
read kohad 
#arvutused
#jagame inimesed busside vahel nii,et kõik kohad bussdel  oleks taidetud sellega
#saame teada ,palju bussi on vaja
bussid =$(($reisijad/ $kohad))
#vaatame, palju on need ,kes ei saanud koha bussides -need on yle  jaanud reisijad,
#ehk jaagid ,kui  kõik kohad on taidetud 
ylejaanud=$(($reisijad % $kohad))
#
#kui on olemas  ylejaanud ,tuleb  suurendada busside arv   vorra
if test $ylejaanud -gt 0
then 
#bussid muutuja vajab yledefeneerimist,selle parast ymbersalvestamiseks 
#ei kasuta $ marki ,aga arvutamisel juba kasutame 
bussid=$(($bussid  + 1))
fi
#tulemuste valjastamine 
#
echo "Kokku on vaja $bussid taisbussi"
#skript lopp 
