#!/bin/bash
Movies=("RRR" "DJTILLU" "MURARI")
#size of above array is 3
#index are 0,1,2
#list always startbwith 0
echo "First movie is:${Movies[0]}"
echo "Second movie is:${Movies[1]}"
echo "third movie is:${Movies[2]}"
echo "All movies are:${Movies[@]}" 