for state in pennsylvania minnesota arizona nevada north-carolina
do
  >trump.$state
  >biden.$state
  for i in $(jq '.data.races[0].timeseries| keys | .[] ' $state.json); 
    do
      votes=$(jq -r ".data.races[0].timeseries[$i] .votes" $state.json) #votes number in the time slot
      trump=$(jq -r ".data.races[0].timeseries[$i] .vote_shares.trumpd" $state.json) #% of votes for Trump
      biden=$(jq -r ".data.races[0].timeseries[$i] .vote_shares.bidenj" $state.json) #% of votes for Biden
      #Votes number for each, should be strictly increasing (non-decreasing) function of time      
      echo "$votes $trump" |awk '{print int ($1 * $2)}' >> trump.$state 
      echo "$votes $biden" |awk '{print int ($1 * $2)}' >> biden.$state      
    done
    #Any descreasing in votes (#vote_t1 - #vote_t0)
    cat trump.$state | awk 'p{print $0-p}{p=$0}' > trump-delta.$state
    cat biden.$state | awk 'p{print $0-p}{p=$0}' > biden-delta.$state
done