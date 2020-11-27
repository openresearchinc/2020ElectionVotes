set terminal png size 2000, 1000
set timefmt "%Y-%m-%dT%H:%M:%SZ" 
set xdata time
set key noautotitle
set xtics font ", 8"
set ytics font ", 8"
set key font ",12"


set output "2020-JB-Curves.png"
set datafile separator ","
set multiplot title "Votes over Time" layout 1,2
	set title "Wisconsin" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  plot 'trump.wisconsin' using 1:2  with line lw 2 lc rgb "red", "biden.wisconsin" using 1:2  with line lw 2 lc rgb "blue" 

	set title "Michigan" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  plot 'trump.michigan' using 1:2  with line lw 2 lc rgb "red", "biden.michigan" using 1:2  with line lw 2 lc rgb "blue" 
unset multiplot

set output "2020-1.png"
set datafile separator " "
set multiplot title "2020 Election Votes Anomalies" layout 7,2 
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
  set yrange [-1000:3100]
	plot 'arkansas.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'arkansas.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "California election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-11000:8000]
	plot 'california.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'california.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "California extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-3500:2000]
	plot 'california.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'california.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  

	set title "Colorado election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-2000:2000]
	plot 'colorado.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'colorado.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Colorado extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-1000:2000]
	plot 'colorado.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'colorado.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  

	set title "Delaware election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-100:100]
	plot 'delaware.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'delaware.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Delaware extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-11T00:00:00Z"] 
  set yrange [-100:100]
	plot 'delaware.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'delaware.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  	
unset multiplot

set output "2020-2.png"
set multiplot title "2020 Election Votes Anomalies" layout 7,2 
	set title "Florida election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-11000:11000]
	plot 'florida.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'florida.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Florida extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-10T00:00:00Z"] 
  set yrange [-100:100]
	plot 'florida.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'florida.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Georgia election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-8000:4000]
	plot 'georgia.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'georgia.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Georgia extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-14T00:00:00Z"] 
  set yrange [-1000:5000]
	plot 'georgia.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'georgia.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Hawaii election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-100:100]
	plot 'hawaii.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'hawaii.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Hawaii extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-14T00:00:00Z"] 
  set yrange [-100:100]
	plot 'hawaii.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'hawaii.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Idaho election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-200:200]
	plot 'idaho.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'idaho.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Idaho extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-14T00:00:00Z"] 
  set yrange [-100:100]
	plot 'idaho.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'idaho.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Illinois election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-2000:2000]
	plot 'illinois.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'illinois.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Illinois extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-2500:2500]
	plot 'illinois.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'illinois.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Indiana election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-1500:1500]
	plot 'indiana.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'indiana.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Indiana extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-14T00:00:00Z"] 
  set yrange [-100:100]
	plot 'indiana.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'indiana.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  

	set title "Iowa election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-1000:1000]
	plot 'iowa.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'iowa.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Iowa extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-14T00:00:00Z"] 
  set yrange [-9000:5000]
	plot 'iowa.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'iowa.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  
unset multiplot

set output "2020-3.png"
set multiplot title "2020 Election Votes Anomalies" layout 7,2 
	set title "Kansas election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-5000:2000]
	plot 'kansas.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'kansas.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Kansas extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-1000:1000]
	plot 'kansas.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'kansas.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Kentucky election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-2000:2000]
	plot 'kentucky.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'kentucky.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Kentucky extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-1000:5000]
	plot 'kentucky.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'kentucky.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Louisiana election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-1000:2000]
	plot 'louisiana.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'louisiana.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Louisiana extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-100:100]
	plot 'louisiana.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'louisiana.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Maine election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-400:400]
	plot 'maine.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'maine.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Maine extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-400:400]
	plot 'maine.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'maine.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Maryland election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-2000:1000]
	plot 'maryland.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'maryland.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Maryland extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-400:400]
	plot 'maryland.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'maryland.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  

	set title "Massachusetts election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-1500:1500]
	plot 'massachusetts.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'massachusetts.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Massachusetts extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-1000:1000]
	plot 'massachusetts.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'massachusetts.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  

	set title "Michigan election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-4000:6000]
	plot 'michigan.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'michigan.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Michigan extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-300:300]
	plot 'michigan.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'michigan.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  
unset multiplot  

set output "2020-4.png"
set multiplot title "2020 Election Votes Anomalies" layout 7,2 
	set title "Minnesota election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-5000:30000]
	plot 'minnesota.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'minnesota.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Minnesota extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-100:100]
	plot 'minnesota.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'minnesota.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Mississippi election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-120:120]
	plot 'mississippi.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'mississippi.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Mississippi extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-1000:2000]
	plot 'mississippi.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'mississippi.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Missouri election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-10000:11000]
	plot 'missouri.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'missouri.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Missouri extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-100:100]
	plot 'missouri.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'missouri.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Montana election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-1000:3000]
	plot 'montana.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'montana.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Montana extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-400:400]
	plot 'montana.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'montana.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  

	set title "Nebraska election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-200:200]
	plot 'nebraska.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'nebraska.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Nebraska extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-25000:31000]
	plot 'nebraska.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'nebraska.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  

	set title "Nevada election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-100:100]
	plot 'nevada.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'nevada.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Nevada extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-1500:1500]
	plot 'nevada.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'nevada.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3    

	set title "New Hampshire election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-600:600]
	plot 'new-hampshire.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'new-hampshire.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "New Hampshire extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-400:400]
	plot 'new-hampshire.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'new-hampshire.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3      
unset multiplot  

set output "2020-5.png"
set multiplot title "2020 Election Votes Anomalies" layout 7,2 
	set title "New Jersey election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-40000:80000]
	plot 'new-jersey.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'new-jersey.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "New Jersey extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-3000:3000]
	plot 'new-jersey.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'new-jersey.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "New Mexico election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-200:200]
	plot 'new-mexico.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'new-mexico.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "New Mexico extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-500:500]
	plot 'new-mexico.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'new-mexico.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "New York election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-5000:5000]
	plot 'new-york.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'new-york.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "New York extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-360000:360000]
	plot 'new-york.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'new-york.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  

	set title "North Carolina election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-4000:4000]
	plot 'north-carolina.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'north-carolina.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "North Carolina extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-5000:5000]
	plot 'north-carolina.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'north-carolina.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  

	set title "North Dakota election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-100:100]
	plot 'north-dakota.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'north-dakota.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "North Dakota extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-300:300]
	plot 'north-dakota.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'north-dakota.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3    

	set title "Ohio election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-6000:6000]
	plot 'ohio.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'ohio.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Ohio extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-9000:9000]
	plot 'ohio.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'ohio.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3      

	set title "Oklahoma election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-800:800]
	plot 'oklahoma.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'oklahoma.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Oklahoma extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-100:100]
	plot 'oklahoma.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'oklahoma.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3        
unset multiplot  

set output "2020-6.png"
set multiplot title "2020 Election Votes Anomalies" layout 7,2 
	set title "Oregon election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-2000:2000]
	plot 'oregon.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'oregon.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Oregon extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-200:200]
	plot 'oregon.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'oregon.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Pennsylvania election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-300000:300000]
	plot 'pennsylvania.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'pennsylvania.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Pennsylvania extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-7000:7000]
	plot 'pennsylvania.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'pennsylvania.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Rhode Island election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-100:100]
	plot 'rhode-island.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'rhode-island.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Rhode Island extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-100:100]
	plot 'rhode-island.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'rhode-island.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "South Carolina election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-1000:1000]
	plot 'south-carolina.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'south-carolina.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "South Carolina extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-2000:2000]
	plot 'south-carolina.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'south-carolina.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "South Dakota election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-1000:1000]
	plot 'south-dakota.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'south-dakota.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "South Dakota extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-3000:3000]
	plot 'south-dakota.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'south-dakota.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3

	set title "Tennessee election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-3000:3000]
	plot 'tennessee.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'tennessee.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Tennessee extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-100:100]
	plot 'tennessee.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'tennessee.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3  

	set title "Texas election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-9000:9000]
	plot 'texas.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'texas.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Texas extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-15000:15000]
	plot 'texas.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'texas.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3    
unset multiplot  

set output "2020-7.png"
set multiplot title "2020 Election Votes Anomalies" layout 7,2 
	set title "Utah election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-1000:1000]
	plot 'utah.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'utah.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Utah extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-1200:1200]
	plot 'utah.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'utah.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3    

	set title "Vermont election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-300:300]
	plot 'vermont.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'vermont.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Vermont extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-200:200]
	plot 'vermont.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'vermont.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3    

	set title "Virginia election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-300000:300000]
	plot 'virginia.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'virginia.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Virginia extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-8000:8000]
	plot 'virginia.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'virginia.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3      

	set title "Washington election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-100:100]
	plot 'washington.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'washington.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Washington extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-3000:3000]
	plot 'washington.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'washington.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3      

	set title "West Virginia election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-200:200]
	plot 'west-virginia.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'west-virginia.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "West Virginia extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-10000:25000]
	plot 'west-virginia.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'west-virginia.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3      

	set title "Wisconsin election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-3500:3500]
	plot 'wisconsin.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'wisconsin.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Wisconsin extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-150:150]
	plot 'wisconsin.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'wisconsin.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3        

	set title "Wyoming election day" offset 0,-2
	set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
  set yrange [-100:100]
	plot 'wyoming.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'wyoming.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
  set title "Wyoming extended days" offset 0,-2
  set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
  set yrange [-250:250]
	plot 'wyoming.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'wyoming.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3          
unset multiplot  

#Not shown because no anomalies for DC
#set title "District-of-Columbia election day" offset 0,-2
#set xrange ["2020-11-04T00:00:00Z":"2020-11-05T00:00:00Z"]   
#set yrange [-100:100]
#plot 'district-of-columbia.plotdata' using 1:2  with impulses lw 2 lc rgb "red", 'district-of-columbia.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3
#set title "District-of-Columbia extended days" offset 0,-2
#set xrange ["2020-11-05T00:00:00Z":"2020-11-15T00:00:00Z"] 
#set yrange [-100:100]
#plot 'district-of-columbia.plotdata' using 1:2 with impulses lw 2 lc rgb "red", 'district-of-columbia.plotdata' using 1:3 with impulses lw 2 lc rgb "blue", 0 lt -1 lw 3            