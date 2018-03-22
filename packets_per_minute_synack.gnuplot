set terminal postscript color
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","
set xlabel "Time"
set ylabel "Responses per Minute"
set style data lines
set autoscale fix
#set xtics nomirror rotate by -45 font ",20"
#set ytics nomirror  font ",20"
#set key font ",20"
#set xlabel font ",20" offset 0,-2,0
#set ylabel font ",20"
#set yrange [0:2000]
set title "packets per minute syn/ack"

#set xdata time
#set timefmt "%m/%d/%y"
#set timefmt "%y-%m-%d"
#set xrange ["4/1/2012":"4/30/2013"]
#set format x "%m/%d/%y"
set yrange [58000:68000]

set style line 1 lw 2 pt 2 lt 1 lc 1
set style line 3 lw 2 pt 2 lt rgb "red"
set style line 2 lw 2 pt 1 lt rgb "blue"
set style line 4 lw 2 pt 1 lt 1 lc 3
set style line 5 lw 2 pt 1 lt rgb "orange"
set style line 6 lw 2 pt 1 lt rgb "#008B8B"

plot "packets_per_minute.csv.sorted" using 2 title "Georgia Tech SYN/ACK" with lines ls 1, \
"packets_per_minute.csv.sorted" using 4 title "Michigan SYN/ACK" with lines ls 4 ;