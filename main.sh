#!/bin/bash

states="alabama alaska arizona arkansas california colorado delaware florida georgia hawaii idaho illinois indiana iowa kansas kentucky  
  louisiana maine maryland massachusetts michigan minnesota mississippi missouri montana nebraska nevada new-hampshire new-jersey new-mexico  
  new-york north-carolina north-dakota ohio oklahoma oregon pennsylvania rhode-island south-carolina south-dakota tennessee texas utah vermont
  virginia washington west-virginia wisconsin wyoming district-of-columbia"
for state in $states
do
  #Fetch streaming vote data from nyt.com in json
  curl "https://static01.nyt.com/elections-assets/2020/data/api/2020-11-03/race-page/$state/president.json" |jq '.'> $state.json
  #Parse json for #votes and percentage for each candidate
	jq -r ".data.races[].timeseries[]|.timestamp,.votes,.vote_shares.trumpd" $state.json |tr '\n' ',' |sed 's/2020-11/\n2020-11/g' \
		|tail -n +2 |awk -F',' '{printf ("%s,%0.f\n",$1, $2 * $3)}' > trump.$state   #timestamp,trump-votes
	jq -r ".data.races[].timeseries[]|.timestamp,.votes,.vote_shares.bidenj" $state.json |tr '\n' ',' |sed 's/2020-11/\n2020-11/g' \
		|tail -n +2 |awk -F',' '{printf ("%s,%0.f\n",$1, $2 * $3)}' > biden.$state   #timestamp,biden-votes		
  #Timestamp, #Trump/Biden #vote drop over adjacent timeslots
	cat trump.$state |awk -F',' 'p{print $1","$2-p}{p=$2}' | awk -F',' '{if ($2>0) print $1" 0";else print $1" "$2}' > trump-delta.$state 
	cat biden.$state |awk -F',' 'p{print $1","$2-p}{p=$2}' | awk -F',' '{if ($2>0) print $1" 0";else print $1" "$2}' > biden-delta.$state 
  #timestamp trump-lost(+)  biden-lost(-) #lost for both in the same slot cancelling each other for better scale in plot
  join -j 1 -o 1.1 1.2 2.2 trump-delta.$state biden-delta.$state |awk '{if (-$2+$3>0) print $1" "(-$2+$3)" 0"; else print $1" 0 "(-$2+$3)}' > $state.plotdata 
  rm *.$state
done
