set grid
set term postscript enhanced eps color font "Helvetica,15" size 5,8.5
set key autotitle columnheader
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","
set style data linespoints
set autoscale fix

set tmargin .4
set bmargin 0
set lmargin at screen .1
set rmargin .8

set ytics nomirror
set multiplot layout 6,1
set xtics nomirror
set xdata time
set timefmt "%m/%d/%y"
set xrange ["1/1/13":"2/1/14"]
#set xrange ["6/1/12":"6/10/13"]
set format x ""
set key font ",20"
#set xrange [-1:30]
#ymax=.95

set ylabel font ",20"

#set yrange [.50:.65]
#set ytics .52, .02, .62

set style line 1 linecolor rgb '#925476' linetype 1 linewidth 4 
set style line 2 linecolor rgb '#005789' linetype 1 linewidth 4 
set style line 3 linecolor rgb '#6c8338' linetype 1 linewidth 4 
set style line 4 linecolor rgb '#ca7700' linetype 1 linewidth 4 
set style line 5 linecolor rgb '#675331' linetype 1 linewidth 4 
set style line 6 linecolor rgb '#813050' linetype 1 linewidth 4 
set style line 7 linecolor rgb '#a73c32' linetype 1 linewidth 4 
set style line 8 linecolor rgb '#606060' linetype 2 linewidth 4 	

set yrange[300000:550000]
set ytics 350000,50000,500000
set arrow from "8/11/13",graph(0,0) to "8/11/13",graph(1,1) nohead ls 8
set label "Public ZMap Release" at "5/10/13", 370000 
plot 'longterm-adjusted-bysize.csv' using 1:7 with lines ls 2 title "Scans < 1%"

set tmargin 0
set yrange [0:12000]
set ytics 2000, 2000, 10000
plot 'longterm-adjusted-bysize.csv' using 1:8 with lines ls 3 title "Scans 1-10%"

set ytics
set yrange [50:300]
set ytics 100, 50, 250
plot 'longterm-adjusted-bysize.csv' using 1:9 with lines ls 4 title "Scans 10-25%"

set yrange [0:50]
set ytics 10, 10, 40

plot 'longterm-adjusted-bysize.csv' using 1:10 with lines ls 1 title "Scans > 25%";

set xtics rotate by -45 font ",20"
set xlabel font ",20" offset 0,-1.5,0
set format x "%m/%Y"
set xlabel "Date"

set yrange [48:65]
set ytics 50,5,60
plot 'weekly-size-of-darket.csv' using 1:($3/1073741824.0) with lines ls 5 title "Darknet Traffic (GB)";
unset multiplot
