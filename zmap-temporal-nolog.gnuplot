set terminal postscript color
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
set yrange [1:100000000]
set grid
set key left bottom

set xdata time
set timefmt "%Y-%m-%d"
set xrange ["2013-01-01":"2014-02-01"]
set format x "%m/%y"
#set logscale y
#set xrange [-1:30]

plot \
"all.temporal.lastremoved" using 1:6 title "all" with points, \
"all.temporal.lastremoved" using 1:7 title "zmap" with points, \
"all.temporal.lastremoved" using 1:8 title "masscan" with points \
;

