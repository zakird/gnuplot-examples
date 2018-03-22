set terminal postscript color
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","
set xlabel "Date"
set ylabel "Things"
set style data linespoints
set autoscale fix
set xtics nomirror rotate by -45 font ",20"
set ytics nomirror  font ",20"
set key font ",20"
set xlabel font ",20" offset 0,-2,0
set ylabel font ",20"
set yrange [1000000:100000000000]
set grid

set xdata time
set timefmt "%Y-%m-%d"
set xrange ["2013-01-01":"2014-02-01"]
set format x "%m/%y"
set logscale y
#set xrange [-1:30]
#ymax=.95
plot "all.temporal" using 1:($7/0.00147808590364769) title "estimated zmap probes" with points,\
"all.temporal" using 1:6 title "darknet packets" with points,\
"all.temporal" using 1:($8/0.00147808590364769) title "estimated masscan probes" with points;

