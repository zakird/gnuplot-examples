set terminal postscript
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","
set ylabel "Scanners CDF"
set xlabel "Unique Destinations"
set autoscale fix
set xrange [100:]
set ytics (0, .9, .99, .999)
set key right bottom
set logscale xy
set yrange [*:*]
#set ytics .001

#set x
set style line 1 lw 4 pt 2 lt rgb "red"
set style line 3 lw 4 pt 2 lt rgb "red"
set style line 2 lw 4 pt 1 lt rgb "blue"
set style line 4 lw 4 pt 1 lt rgb "black"
set style line 5 lw 4 pt 1 lt rgb "orange"
set style line 6 lw 4 pt 1 lt rgb "#008B8B"

plot "uniqdests_cdf.csv" using 1:2 with lines ls 2
