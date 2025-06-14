#!/usr/bin/env zsh

for i in {1..25}
	echo -e "\033[0;$((102-$i%2));$((91+$i%2))m
	Day $i:\033[0;$((31+i%2))m"&&./$i.bqn $i.in
