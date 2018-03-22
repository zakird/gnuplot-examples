set terminal postscript color
set term postscript enhanced eps color font "Helvetica,20"
set key autotitle columnheader
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","
set xlabel "Date"
set ylabel "Port 443 (HTTPS) Probes"
set style data points
set autoscale fix
#set xtics nomirror rotate by -45 font ",20"
set ytics nomirror  font ",20"
set key font ",20"
set xlabel font ",20" offset 0,-2,0
set ylabel font ",20"
#set yrange [1:150]
set grid
set key bottom;
set xdata time
set timefmt "%m/%d/%y"
set xrange ["4/1/14":"4/20/14"]
set format x "%m/%d"
set logscale y
set yrange[1e7:1e11]
#set xrange [-1:30]
set key top left;

set style line 1 linecolor rgb '#925476' linetype 1 linewidth 4 
set style line 2 linecolor rgb '#005789' linetype 1 linewidth 4 
set style line 3 linecolor rgb '#000000' linetype 1 linewidth 5 
set style line 4 linecolor rgb '#ca7700' linetype 1 linewidth 3 
set style line 5 linecolor rgb '#675331' linetype 1 linewidth 3 
set style line 6 linecolor rgb '#813050' linetype 1 linewidth 3 
set style line 7 linecolor rgb '#a73c32' linetype 1 linewidth 3 
set style line 8 linecolor rgb '#456638' linetype 1 linewidth 3 
set style line 9 linecolor rgb '#358500' linetype 1 linewidth 3 
set style line 10 linecolor rgb '#3d87aa' linetype 1 linewidth 3 
set style line 11 linecolor rgb '#c85d28' linetype 1 linewidth 3 
set style line 12 linecolor rgb '#979281' linetype 1 linewidth 3 
set style line 13 linecolor rgb '#d55258' linetype 1 linewidth 3 

set arrow from "4/7/14",graph(0,0) to "4/7/14",graph(1,1) nohead ls 3
set label "Public Disclosure" at "12/16/13", 1e9 

plot "results.csv" using 1:($2/.00147808590364769) with lines ls 1 title "<1% Scans", \
"results.csv" using 1:(($7)/.00147808590364769) with lines ls 2 title ">=1% Scans";

