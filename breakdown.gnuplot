set terminal postscript color
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","

set key invert reverse Left outside
set key autotitle columnheader
#set yrange [0:7e6]
set auto x
unset xtics
set xtics nomirror rotate by -45 scale 0 font ",8"
set style data histogram
set style histogram rowstacked
set style fill solid border
set boxwidth 0.75
#set xdata time
#set timefmt "%Y-%m-%d"
#set xrange ["2013-01-01":"2014-02-01"]
#set format x "%m/%y"
#
plot 'all.breakdown' using 2:xtic(1), for [i=3:6] '' using i
#

