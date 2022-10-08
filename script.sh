#!/bin/bash

#date,rank,song,artist,last-week,peak-rank,weeks-on-board
echo "Truncate charts.csv into 20 lines and sort by weeks on board"
echo "..."
head -n20 charts.csv > charts20.csv
sort -t"," -k7n,7 charts20.csv
echo "..."
echo 
echo "Now, we only want to display sorted result of song name, artist, weeks on board"
echo "..."
i=1
while IFS=, read -r col1 col2 col3 col4 col5 col6 col7
do  
    if [ $i -eq 1 ] 
    then
        echo "Song name | Artist | Weeks on Board"
    else
        echo "Song $i: $col3 | $col4 | $col7"
    fi
    i=$(($i+1))
done < charts20.csv