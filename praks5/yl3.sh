#!/bin/bash
#Aeg
echo -e "Sisesta ajavaartus"
read aeg
#kontroll
if [ $aeg -ge 6 -a $aeg  -lt  12 ]; then
	echo "Tere hommikust"
elif [ $aeg -ge 12 -a $aeg  -lt 18 ]; then
 	echo "Tere paevast"
elif [ $aeg -ge 18 -a $aeg -lt  22 ]; then 
        echo "Tere ohtust !"
elif [ $vanus -ge 22 -a $aeg -lt 24 ] || [ $aeg -ge 0 -a $aeg -lt 6 ]; then
echo "Head ood !"

else
        echo "vigane sisend"
fi

