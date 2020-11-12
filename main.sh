#!/bin/bash

for state in alabama alaska arizona arkansas california colorado delaware florida georgia hawaii idaho illinois indiana iowa kansas kentucky  \
  louisiana maine maryland massachusetts michigan minnesota mississippi missouri montana nebraska nevada new-hampshire new-jersey new-mexico  \
  new-york north-carolina north-dakota ohio oklahoma oregon pennsylvania rhode-island south-carolina south-dakota tennessee texas utah vermont\
  virginia washington west-virginia wisconsin wyoming district-of-columbia
do  
  curl "https://static01.nyt.com/elections-assets/2020/data/api/2020-11-03/race-page/$state/president.json" |jq '.'> $state.json
done