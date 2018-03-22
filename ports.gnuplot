set terminal postscript color
set term postscript enhanced eps color font "Helvetica,20"
#set key autotitle columnheader
set output "output.ps"
set datafile commentschars "#%"
set datafile separator ","
set ylabel "January 2014 Scans"
#set xlabel "Destination Port"
#set style data points
set autoscale fix
set xtics nomirror rotate by -60 font ",20"
#set ytics nomirror  font ",20"
set key font ",20"
set xlabel font ",20" offset 0,-2,0
set ylabel font ",20"
#set yrange [0:425]
set grid

#set xdata time
#set timefmt "%Y-%m-%d"
#set xrange ["2013-01-01":"2014-02-01"]
#set format x "%m/%y"
set tic scale 0

set style line 1 linecolor rgb '#925476'
set style line 2 linecolor rgb '#005789' 
set style line 3 linecolor rgb '#6c8338' 
set style line 4 linecolor rgb '#ca7700' 
set style line 5 linecolor rgb '#675331' 
set style line 6 linecolor rgb '#813050' 
set style line 7 linecolor rgb '#a73c32' 
set style line 8 linecolor rgb '#456638' 
set style line 9 linecolor rgb '#358500' 
set style line 10 linecolor rgb '#3d87aa'
set style line 11 linecolor rgb '#c85d28'
set style line 12 linecolor rgb '#979281'
set style line 13 linecolor rgb '#d55258'

set style data histogram
set style histogram cluster gap 1;
set style fill solid noborder;
set xrange [.5:17.5]
set yrange [0:200]
plot 'data.csv' using 2:xtic(7) title "China" ls 6, \
        '' using 3:xtic(7) title "United States" ls 2, \
        '' using 4:xtic(7) title "Netherlands" ls 4, \
        '' using 5:xtic(7) title "Others" ls 3;
