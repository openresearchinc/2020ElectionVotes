There are many posts claiming that voting software/system used in 2020 US election are "buggy"(best case) or systematic fraudulent(worst case) in Biden's favor, for example, https://www.naturalnews.com/2020-11-11-election-data-analyzed-votes-switched-biden-software.html
The claim is based on the fact that vote numbers for each candidate in adjacent timeslots should be an increasding (at least non-decreasing) function of time. Any 'drop' or 'switch' (i.e. votes added to an candidate is substracted from another candidate) is regarded as an anomaly. 
Given the complexity of a voting system due to human-error or systematic correction of mis-counted votes, such "anomaly" is generally expected but should affect each candidate "equally bad". Aforementioned claims are largely based observations of a few sampled timeslots, but do not give audiences a simple verification tool to inspect data themselves. 

This repo provides user with a simple script (<20 lines) to fetch data from nyt.com data feed, and help users to visualize anomalies for each candidate (Trump-R-Red) and (Biden-D-Blue) over 50 states and time:  
1. main.sh           #fetch votes data in JSON format, parse and preprocess for visualization. The votes are still being counted at the time of this writing (11/14/2020). 
2. visualize.gnuplot #run 'gnuplot visualize.gnuplot' in the command-line window. It will generate up-to-date "fishbone graph for anomalies in PNG format. 

One does not need any software to check out and execute it, just fork https://repl.it/@QimingHe/2020ElectionVotes and run it in a browser.
