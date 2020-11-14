set terminal png size 2000, 800
set timefmt "%Y-%m-%dT%H:%M:%SZ" 
set xdata time
set key noautotitle
#set xtics rotate
set xtics font ", 8"
set ytics font ", 8"
set key font ",12"

set output "2020-1.png"
set multiplot title "2020 Election Votes Anomalies" layout 5,2 
	set title "Alabama election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-1400:1400]
	plot 'alabama.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'alabama.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Alabama extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-07T00:00:00Z"] 
  set yrange [-200:200]
	plot 'alabama.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'alabama.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Alaska election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-100:100]
	plot 'alaska.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'alaska.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Alaska extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-100:100]
	plot 'alaska.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'alaska.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Arizona election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-2500:2500]
	plot 'arizona.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'arizona.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Arizona extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-3000:3000]
	plot 'arizona.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'arizona.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Arkansas election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-250:250]
	plot 'arkansas.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'arkansas.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Arkansas extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-200:3100]
	plot 'arkansas.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'arkansas.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "California election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-11000:8000]
	plot 'california.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'california.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "California extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-3500:2000]
	plot 'california.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'california.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  
unset multiplot

