#! /usr/bin/bash

rm nohup.out
nohup parallel -j100% --header : python3 -u Chisqfit.py "-s" {seeds} \
   ::: seeds $(shuf -i 1-100 -n 10) \

i=0
# for s in $(grep -oP '(?<=seed=)[0-9]+' nohup.out); do
   for n in $(grep 'p-value = ' nohup.out | sed 's/^.*= //'); do
      if (( $(echo "$n < 0.05" | bc -l) )); then
         let i+=1
         grep -i -B 3 $n nohup.out | grep -o "seed=(0|[1-9][0-9]*)"
         # echo $n
         # echo $seed
      fi
   done
# done
echo "Number of occurrances: $i" 