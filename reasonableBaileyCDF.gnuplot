#!/usr/local/bin/gnuplot
set terminal postscript color
set output "reasonableBaileyCDF.ps"
set datafile separator ","
set autoscale fix
set xtics nomirror rotate by -45 font ",20"
set key font ",20"
set grid
set xlabel font ",20" offset 0,-2,0
set ylabel font ",20"
set ytics nomirror  font ",20"
set style data points
set nokey
set style line 1 linecolor rgb '#925476' linetype 1 linewidth 5

set ylabel "CDF"


set title "By Routing Block"
set xlabel "(# Unique queries) / (# IPs in route)"
plot "reasonableBaileyCDF.csv" every ::1 using 5:(1./456326) smooth cumulative with lines ls 1


set yrange[0.9999:1]
set xtics ( "0" 0, "4" 4, "20" 20, "40" 40, "60" 60, "80" 80, "100" 100)
plot "reasonableBaileyCDF.csv" every ::1 using 5:(1./456326) smooth cumulative with lines ls 1
#

system "ps2pdf reasonableBaileyCDF.ps reasonableBaileyCDF.pdf"
system "rm reasonableBaileyCDF.ps"
system "open reasonableBaileyCDF.pdf"
