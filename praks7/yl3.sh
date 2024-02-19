#!/bin/bash
# See skript genereerib kujundi vastavalt kasutaja poolt sisestatud ridade ja tärnide arvule

echo "Sisesta ridade arv:"
read ridade_arv

for ((i=1; i<=$ridade_arv; i++))
do
    for ((j=1; j<=$i; j++))
    do
        echo -n "* "
    done
    echo
done
