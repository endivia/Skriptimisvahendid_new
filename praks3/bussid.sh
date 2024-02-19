
# Küsime kasutajalt  reisijate arv
read -p "Sisestage reisijate  arv: " reisijaarv

# Küsime kasutajalt  gruppi arv
read -p "Sisestage gruppi arv: " grupp

# Arvutame  kohtade arv
ajakulu=$(echo "scale=1; $ainepunktid * 26 / $nadalad" | bc)

# Ümardame eeldatava ajakulu ülespoole
ajakulu_uumardatud=$(echo "scale=0; ($ajakulu+0.9)/1" | bc)

# Väljastame tulemuse
echo "Ühe nädala eeldatav ajakulu on $ajakulu_uumardatud tundi."

