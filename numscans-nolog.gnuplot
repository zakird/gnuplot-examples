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
set yrange [1:200]
set grid

set xdata time
set timefmt "%Y-%m-%d"
set xrange ["2013-01-01":"2014-02-01"]
set format x "%m/%y"
#set logscale y
#set xrange [-1:30]

plot \
"all.temporal.lastremoved" using 1:18 title "< 25%" with points, \
"all.temporal.lastremoved" using 1:19 title "< 50%" with points, \
"all.temporal.lastremoved" using 1:20 title "< 100%" with points pt 14\
;

