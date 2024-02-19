#!/bin/bash
#
#skripti algoritm 
#kui kasureeaparaametrite arv ei võrdu 1 ga ;siis trukki valja selgituslause 
#muidu
#esimene paraameter on arv 
#$1-arv paraameter 
#$2-
if [ $# -ne 1 ]; then 
echo "Kaivita see skript koos arvuga mille parsus soovid kontrollida .Naiteks $0 3"
else 
arv=$1
jaak=$(( $arv % 2))
if [$jaak -eq 0] ;then 
echo "$arv on paaris"  
else
echo "$arv on paaritu"
if
if

