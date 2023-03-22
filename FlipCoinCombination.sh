#!/bin/bash

declare -A boublet_combinations

echo "Enter the number of times to flip the coin:"
read num_flips

for (( i=0; i<$num_flips; i++ ))
do
	flip1=$(( RANDOM % 2 ))
	flip2=$(( RANDOM % 2 ))
	doublet="$flip1$flip2"

	if [[ ${doublet_combinations[$doublet]+_} ]];
then
	doublet_combinations[$doublet]=$((doublet_combinations[$doublet]+1))
else
	doublet_combinations[$doublet]=1
fi
done

	echo "Doublet_combinations:"
for key in "${!doublet_combinations[@]}"
do
	percentage=$(echo "scale=2; ${doublet_combinations[$key]} / $sum_flips * 100 )
echo	"$key: ${doublet_combinations[$key]} (${percentage}%)"
done