#!/bin/bash
#vaanuse kontrol
echo "Sisesta oma vanus" 
read vanus
if test $vanus -gt 0 -a $vanus -lt 11
then 
echo"Sina oled laps"
if test $vanus -gt 0 -a $vanus -lt 11
elif test $vanus -ge 11 -a $vanus -lt 18
then
        echo "oled nooruk"
elif test $vanus -ge 18 -a $vanus -lt 63
then
        echo "oled täiskasvanu"
elif test $vanus -ge 63
then
        echo "oled senioor"
else
        echo "vigane sisend"
fi

