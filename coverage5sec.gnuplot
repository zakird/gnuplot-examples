set terminal postscript color
set term postscript enhanced eps color font "Helvetica,20"
#set key autotitle columnheader
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","
set ylabel "CDF of Scans"
set xlabel "Estimated Scan Coverage"
set style data points
set autoscale fix
#set xtics nomirror rotate by -45 font ",20"
set ytics nomirror  font ",20"
set format x "%g%%"
set key font ",20"
set xlabel font ",20" offset 0,-2,0
set ylabel font ",20"
#set yrange [0:425]
#set grid

#set xdata time
#set timefmt "%Y-%m-%d"
#set xrange ["2013-01-01":"2014-02-01"]
#set format x "%m/%y"
set logscale x
set xrange [.01:100]

set style line 1 linecolor rgb '#925476' linetype 1 linewidth 4 
set style line 2 linecolor rgb '#005789' linetype 1 linewidth 4 
set style line 3 linecolor rgb '#6c8338' linetype 1 linewidth 1.5 
set style line 4 linecolor rgb '#ca7700' linetype 1 linewidth 1.5 
set style line 5 linecolor rgb '#675331' linetype 1 linewidth 1.5 
set style line 6 linecolor rgb '#813050' linetype 1 linewidth 1.5 
set style line 7 linecolor rgb '#a73c32' linetype 1 linewidth 1.5 
set style line 8 linecolor rgb '#456638' linetype 1 linewidth 1.5 
set style line 9 linecolor rgb '#358500' linetype 1 linewidth 1.5 
set style line 10 linecolor rgb '#3d87aa' linetype 1 linewidth 1.5 
set style line 11 linecolor rgb '#c85d28' linetype 1 linewidth 1.5 
set style line 12 linecolor rgb '#979281' linetype 1 linewidth 1.5 
set style line 13 linecolor rgb '#d55258' linetype 1 linewidth 1.5 

set multiplot   
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1

plot '5sec.csv' using ($1*100/5472256.0):2 with lines notitle ls 2;
set xlabel ""
set ylabel ""

set size 0.5,0.5        # set the size of the second plot in plot units
set origin 0.4,0.35     # set the origin for the second plot in plot units

set yrange[.995:]
set xrange [.5:100]
set ytics .001
plot '5sec.csv' using ($1*100/5472256.0):($2) with lines notitle ls 1;

