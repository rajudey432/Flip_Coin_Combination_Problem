#!/bin/bash

# simulate flipping a coin
flip=$(( RANDOM % 2 ))

# display the result
if [ $flip -eq 0 ];
then
	echo "Heads"
else
	echo "Tails"
fi
