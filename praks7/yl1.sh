#!/bin/bash
#kontrollime kas vaiksem kui 5 .
#suurendame 1 ga
for (( i = 1; i <= 5; i++ ))      ### Outer for loop ###
do
    for (( j = 1 ; j <= 5; j++ )) ### Inner for loop ###
    do
          echo -n "$i "
    done
  echo "" #### print the new line ###
done

