set terminal postscript
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","
set ylabel "Probes"
set xlabel "Ports"
set autoscale fix
#set xtics 0, 1
#set ytics 0, .1
set yrange [1:1000000000000]
#set key right bottom
set logscale y
#set boxwidth 0.3
set style fill solid
plot "packet-types.txt" using 2:xtic(1) with histogram;
