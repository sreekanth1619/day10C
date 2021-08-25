#! /bin/bash

read -p "Number of times you want to flip a coin: " n;

	a=0;
	b=0;
	c=0;
	d=0;
	e=0;
	f=0;
	g=0;
	h=0;

		for ((i=0;i<n;i++))
		do
			coin=$((RANDOM%8))
			if [[ $coin -eq 0 ]]
				then
				triple[i]=HHH;
				a=$(($a+1));
			elif [[ $coin -eq 1 ]]; 
			then
				triple[i]=HHT;
				b=$(($b+1));
			elif [[ $coin -eq 2 ]]
			then
				triple[i]=HTH;
				c=$(($c+1));
			elif [[ $coin -eq 3 ]]
			then
				triple[i]=HTT;
				d=$(($d+1));
			elif [[ $coin -eq 4 ]]; 
			then
				triple[i]=THH;
				e=$(($e+1));
			elif [[ $coin -eq 5 ]]
			then
				triple[i]=THT;
				f=$(($f+1));
			elif [[ $coin -eq 6 ]]
			then
				triple[i]=TTH;
				g=$(($g+1));
			else
				triple[i]=TTT;
				h=$(($h+1));
			fi	
		done

	echo "                                       ";
	echo "Triplet combinations are (${triple[*]})";
	wHHH=$(($(($a*100))/$n)) 
	wHHT=$(($(($b*100))/$n)) 
	wHTH=$(($(($c*100))/$n))
	wHTT=$(($(($d*100))/$n)) 
	wTHH=$(($(($e*100))/$n)) 
	wTHT=$(($(($f*100))/$n)) 
	wTTH=$(($(($g*100))/$n)) 
	wTTT=$(($(($h*100))/$n)) 

	echo "=======================================";
	echo "HHH win % is = $wHHH %";
	echo "HHT win % is = $wHHT %";
	echo "HTH win % is = $wHTH %";
	echo "HTT win % is = $wHTT %";
	echo "THH win % is = $wTHH %";
	echo "THT win % is = $wTHT %";
	echo "TTH win % is = $wTTH %";
	echo "TTT win % is = $wTTT %";
	echo "=======================================";
