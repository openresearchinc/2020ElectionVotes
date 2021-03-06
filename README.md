There are many posts claiming that voting software/system used in 2020 US election are "buggy"(best case) or systematic fraudulent(worst case) in Biden's favor, for example, https://www.naturalnews.com/2020-11-11-election-data-analyzed-votes-switched-biden-software.html
The claim is based on the fact that vote numbers for each candidate in adjacent timeslots should be an increasing (at least non-decreasing) function of time. Any 'drop' or 'switch' (i.e. votes added to an candidate is substracted from another candidate) is regarded as an anomaly. Given the complexity of a voting system due to human-error or systematic correction of mis-counted votes, it is expected to observe such "anomalies" which should affect all candidates "equally bad". Aforementioned claims are largely based observations of a few sampled timeslots, but do not give audiences a simple verification tool to inspect data themselves. 

This repo provides users with a simple (in less than 10 lines of code) script to fetch streaming data from nyt.com data feed, and help users to visualize anomalies-over-time for each candidate (Trump-R-Red) and (Biden-D-Blue) in 50 states:  
1. main.sh           #Fetch votes data in JSON format, parse, process data for visualization.  
2. visualize.gnuplot #Run 'gnuplot visualize.gnuplot' in the command-line window. It will generate up-to-date color-coded "fishbone" graph of anomalies on election day and beyond.
One does not need any software to check out and execute this code, just fork https://repl.it/@QimingHe/2020ElectionVotes and execute it in a web browser.

At the time of this writing (11/16/2020 as votes are still being counted/streamed), Biden's votes dropped 368 times and down by 1948K+, Trump's votes dropped only 193 times and donw by 632K+.
