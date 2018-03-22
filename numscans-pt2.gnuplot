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
"ports-over-time.csv" using 1:11 with lines ls 1, \
"ports-over-time.csv" using 1:12 with lines ls 2, \
"ports-over-time.csv" using 1:13 with lines ls 3, \
"ports-over-time.csv" using 1:14 with lines ls 4, \
"ports-over-time.csv" using 1:15 with lines ls 5,\
"ports-over-time.csv" using 1:16 with lines ls 6,\
"ports-over-time.csv" using 1:17 with lines ls 7,\
"ports-over-time.csv" using 1:18 with lines ls 8,\
"ports-over-time.csv" using 1:19 with lines ls 10,\
"ports-over-time.csv" using 1:20 with lines ls 11,\
"ports-over-time.csv" using 1:21 with lines ls 12\
;

