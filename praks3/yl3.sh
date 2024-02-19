#!/bin/bash

# Küsime kasutajalt ainepunktide arvu
read -p "Sisestage ainepunktide arv: " ainepunktid

# Küsime kasutajalt nädalate arvu
read -p "Sisestage nädalate arv: " nadalad

# Arvutame eeldatava ajakulu tundides
ajakulu=$(echo "scale=1; $ainepunktid * 26 / $nadalad" | bc)

# Ümardame eeldatava ajakulu ülespoole
ajakulu_uumardatud=$(echo "scale=0; ($ajakulu+0.9)/1" | bc)

# Väljastame tulemuse
echo "Ühe nädala eeldatav ajakulu on $ajakulu_uumardatud tundi."
