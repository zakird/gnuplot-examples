set terminal postscript
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","
set ylabel "Scanner Breakdown"
set xlabel "Darknet Coverage"
set autoscale fix
#set yrange [0:1]
set xrange [0.1:1]
#set yrange [.99:]
#set xtics 0, 512
#set ytics 0, .1
#set key right bottom
set logscale x

set style line 1 linecolor rgb '#925476' linetype 1 linewidth 3 
set style line 2 linecolor rgb '#005789' linetype 1 linewidth 3
set style line 3 linecolor rgb '#6c8338' linetype 1 linewidth 3

plot "data.csv" using ($1/5472256):($2*100) with lines ls 1;
