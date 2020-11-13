#!/bin/bash

for state in alabama alaska arizona arkansas california colorado delaware florida georgia hawaii idaho illinois indiana iowa kansas kentucky 	\
	louisiana maine maryland massachusetts michigan minnesota mississippi missouri montana nebraska nevada new-hampshire new-jersey new-mexico  \
	new-york north-carolina north-dakota ohio oklahoma oregon pennsylvania rhode-island south-carolina south-dakota tennessee texas utah vermont\
	virginia washington west-virginia wisconsin wyoming district-of-columbia
do  
	jq -r ".data.races[].timeseries[]|.timestamp,.votes,.vote_shares.trumpd" $state.json |tr '\n' ',' |sed 's/2020-11/\n2020-11/g' \
		|tail -n +2 |awk -F',' '{printf ("%s,%0.f\n",$1, $2 * $3)}' > trump.$state   #timestamp,trump-votes
	jq -r ".data.races[].timeseries[]|.timestamp,.votes,.vote_shares.bidenj" $state.json |tr '\n' ',' |sed 's/2020-11/\n2020-11/g' \
		|tail -n +2 |awk -F',' '{printf ("%s,%0.f\n",$1, $2 * $3)}' > biden.$state   #timestamp,biden-votes
		
	cat trump.$state |awk -F',' 'p{print $1","$2-p}{p=$2}' | awk -F',' '{if ($2>0) print $1" 0";else print $1" "$2}' > trump-delta.$state #timestamp, #Trump drop #vote adj timeslot
	cat biden.$state |awk -F',' 'p{print $1","$2-p}{p=$2}' | awk -F',' '{if ($2>0) print $1" 0";else print $1" "$2}' > biden-delta.$state #timestamp, #Biden drop #vote adj timeslot
  join -j 1 -o 1.1 1.2 2.2 trump-delta.$state biden-delta.$state > $state.data #timestamp trump-lost biden-lost
done