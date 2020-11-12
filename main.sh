#ref: https://m.wenxuecity.com/bbs/rdzn/4647564.html

for state in pennsylvania minnesota arizona nevada north-carolina 
do #battle state first and then 
  curl "https://static01.nyt.com/elections-assets/2020/data/api/2020-11-03/race-page/$state/president.json" |jq '.'> $state.json
done