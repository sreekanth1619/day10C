#! /bin/bash

read -p "Number of times you want to flip a coin: " n;

declare -A coin;

head=0;
tail=0;


for ((i=0;i<n;i++))
    do
    rann=$((RANDOM%2))
    if [[ $rann -eq 0 ]]
        then
         flip[i]=H;
         head=$(($head+1));
        else
        flip[i]=T;
        tail=$(($tail+1));
    fi
    done

    echo "Occurances of head and tail in a flip are in following order: (${flip[*]})";
        whead=$(( $(( (($head*100))/$n )) ));
        wtail=$(( $(( (($tail*100))/$n )) ));

        echo "                                          ";
        echo "Number of times head occured: $head";
        echo "                                          ";
        echo "Number of times head occured: $tail";   
        echo "==========================================";
        echo "Percentage of head wins: $whead %";
        echo "                                          ";
        echo "Percentage of Tail wins: $wtail %";
        echo "==========================================";
