#!/bin/bash
# See skript genereerib kujundi vastavalt kasutaja poolt sisestatud ridade ja tärnide arvule

echo "Sisesta ridade arv:"
read ridade_arv

echo "Sisesta tarnide arv reas:"
read tarnide_arv

for ((i=1; i<=$ridade_arv; i++))
do
    for ((j=1; j<=$tarnide_arv; j++))
    do
        echo -n "* "
    done
    echo
done
