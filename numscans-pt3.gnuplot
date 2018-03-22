set terminal postscript color
set key autotitle columnheader
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","
set xlabel "Date"
set ylabel "Things"
set style data points
set autoscale fix
set xtics nomirror rotate by -45 font ",20"
set ytics nomirror  font ",20"
set key font ",20"
set xlabel font ",20" offset 0,-2,0
set ylabel font ",20"
#set yrange [1:10000000]
set grid

set xdata time
set timefmt "%Y-%m-%d"
set xrange ["2013-01-01":"2014-02-01"]
set format x "%m/%y"
set logscale y
#set xrange [-1:30]

set style line 1 linecolor rgb '#925476' linetype 1 linewidth 1.5 
set style line 2 linecolor rgb '#005789' linetype 1 linewidth 1.5 
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

plot \
"ports-over-time.csv" using 1:22 with lines ls 1, \
"ports-over-time.csv" using 1:23 with lines ls 2;
plot "ports-over-time.csv" using 1:24 with lines ls 3, \
"ports-over-time.csv" using 1:25 with lines ls 4;
plot "ports-over-time.csv" using 1:26 with lines ls 5,\
"ports-over-time.csv" using 1:27 with lines ls 6;
plot "ports-over-time.csv" using 1:28 with lines ls 7,\
"ports-over-time.csv" using 1:29 with lines ls 8;
plot "ports-over-time.csv" using 1:30 with lines ls 10,\
"ports-over-time.csv" using 1:31 with lines ls 11,\
"ports-over-time.csv" using 1:32 with lines ls 12;
plot "ports-over-time.csv" using 1:33 with lines ls 10,\
"ports-over-time.csv" using 1:34 with lines ls 11;
plot "ports-over-time.csv" using 1:35 with lines ls 12,\
"ports-over-time.csv" using 1:36 with lines ls 13;
plot "ports-over-time.csv" using 1:37 with lines ls 1,\
"ports-over-time.csv" using 1:38 with lines ls 2;
plot "ports-over-time.csv" using 1:39 with lines ls 3,\
"ports-over-time.csv" using 1:40 with lines ls 4;


