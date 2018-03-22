#!/usr/local/bin/gnuplot
set terminal postscript color
set output "timeVCount.ps"
set datafile separator ","
set xlabel "Time (24hr period of 9Feb2014)"
set ylabel "Query Count"
set autoscale fix
set xtics nomirror rotate by -45 font ",20"
set key font ",20"
set grid
set xlabel font ",20" offset 0,-2,0
set ylabel font ",20"
set ytics nomirror  font ",20"
set style data points

#set title "All DNS queries (1 second granularity)"
#set yrange [0:2500]
#plot "fullTimeToCount.csv" using 1:2 title "All day"

set title "Only PTR queries for scan specific IPs (1 second granularity)"
set yrange [0:750]
#plot "srcIpsFullTime.csv" using 1:2 title "All day", \
#"srcIpsScanTimeTimeToCount.csv" using 1:2 lt rgb "black" title "1 hour +- scanning"
plot "trimmedTimeToCount.csv" using 1:2

system "ps2pdf timeVCount.ps timeVCount.pdf"
system "rm timeVCount.ps"
system "open timeVCount.pdf"

