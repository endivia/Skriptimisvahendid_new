#!/bin/bash
#paarsuse kontroll
echo  -n "Sisesta suvaline täisarv: "
read arv 
#arvutame jaak 2 ga jagamisel 
jaak=$(( $arv% 2))
#4% 2 => 0 ->siis jaak on paaris
##5% 2 => 1 ->siis jaak on paaritu
if [$jaak  -eq  0]
then 
echo "$arv on paaris"

else echo "$arv on paaritu "
fi 
#programmi lopp
