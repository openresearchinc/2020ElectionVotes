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
		
	cat trump.$state |tail -n +5 |awk -F',' 'p{print $1","$2-p}{p=$2}' > trump-delta.$state #timestamp, #Trump vote(t_n-t_(n-1))
	cat biden.$state |tail -n +5 |awk -F',' 'p{print $1","$2-p}{p=$2}' > biden-delta.$state #timestamp, #Biden vote(t_n-t_(n-1))
done