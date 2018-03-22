set grid
set terminal postscript
set output "output.ps"
set term postscript enhanced eps color font "Helvetica,20"
set xtics nomirror rotate by -45 font ",15"
set ytics nomirror  font ",20"
set key font ",20"
set xlabel font ",20" offset 0,-2,0
set ylabel font ",20"
set style line 1 linecolor rgb '#925476' linetype 1 linewidth 1.5 
set style line 2 linecolor rgb '#005789' linetype 1 linewidth 1.5 
set style line 3 linecolor rgb '#6c8338' linetype 1 linewidth 1.5 
set style line 4 linecolor rgb '#ca7700' linetype 1 linewidth 1.5 
set style line 5 linecolor rgb '#675331' linetype 1 linewidth 1.5 
set style line 6 linecolor rgb '#813050' linetype 1 linewidth 1.5 
set style line 7 linecolor rgb '#a73c32' linetype 1 linewidth 1.5 
set style line 8 linecolor rgb '#456638' linetype 1 linewidth 1.5 
set style line 9 linecolor rgb '#358500' linetype 1 linewidth 1.5 

set datafile commentschars "#%"
set datafile separator ","
set ylabel "Packet Streams"
set autoscale fix
#set xtics 0, 1
#set ytics 0, .1
set yrange [1:10000000000]
#set key right bottom
set logscale y
#set boxwidth 0.3
set style fill solid
plot "stream-types.txt" using 2:xtic(1) with histogram notitle ls 2;
