set terminal postscript color
set key autotitle columnheader
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
set yrange [0:50]
set grid

set xdata time
set timefmt "%m/%d/%y"
#set xrange ["2013-01-01":"2014-02-01"]
set format x "%m/%y"
#set logscale y
#set xrange [-1:30]

set style line 1 linecolor rgb '#925476' linetype 1 linewidth 4 
set style line 2 linecolor rgb '#005789' linetype 1 linewidth 4 
set style line 3 linecolor rgb '#6c8338' linetype 1 linewidth 4 
set style line 4 linecolor rgb '#ca7700' linetype 1 linewidth 4 
set style line 5 linecolor rgb '#675331' linetype 1 linewidth 4 
set style line 6 linecolor rgb '#813050' linetype 1 linewidth 4 
set style line 7 linecolor rgb '#a73c32' linetype 1 linewidth 4 
set style line 8 linecolor rgb '#456638' linetype 1 linewidth 4 
set style line 9 linecolor rgb '#358500' linetype 1 linewidth 4 
set style line 10 linecolor rgb '#3d87aa' linetype 1 linewidth 4 
set style line 11 linecolor rgb '#c85d28' linetype 1 linewidth 4 
set style line 12 linecolor rgb '#979281' linetype 1 linewidth 4 
set style line 13 linecolor rgb '#d55258' linetype 1 linewidth 4 

plot "ports-over-time-top10.gt10.csv" using 1:2 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:3 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:4 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:5 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:6 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:7 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:8 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:9 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:10 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:11 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:12 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:13 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:14 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:15 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:16 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:17 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:18 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:19 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:20 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:21 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:22 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:23 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:24 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:25 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:26 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:27 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:28 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:29 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:30 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:31 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:32 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:33 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:34 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:35 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:36 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:37 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:38 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:39 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:40 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:41 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:42 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:43 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:44 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:45 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:46 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:47 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:48 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:49 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:50 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:51 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:52 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:53 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:54 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:55 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:56 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:57 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:58 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:59 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:60 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:61 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:62 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:63 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:64 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:65 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:66 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:67 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:68 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:69 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:70 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:71 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:72 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:73 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:74 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:75 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:76 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:77 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:78 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:79 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:80 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:81 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:82 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:83 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:84 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:85 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:86 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:87 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:88 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:89 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:90 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:91 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:92 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:93 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:94 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:95 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:96 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:97 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:98 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:99 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:100 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:101 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:102 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:103 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:104 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:105 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:106 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:107 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:108 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:109 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:110 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:111 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:112 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:113 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:114 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:115 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:116 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:117 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:118 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:119 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:120 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:121 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:122 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:123 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:124 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:125 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:126 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:127 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:128 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:129 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:130 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:131 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:132 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:133 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:134 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:135 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:136 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:137 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:138 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:139 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:140 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:141 with lines ls 7;
plot "ports-over-time-top10.gt10.csv" using 1:142 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:143 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:144 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:145 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:146 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:147 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:148 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:149 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:150 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:151 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:152 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:153 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:154 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:155 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:156 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:157 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:158 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:159 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:160 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:161 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:162 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:163 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:164 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:165 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:166 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:167 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:168 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:169 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:170 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:171 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:172 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:173 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:174 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:175 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:176 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:177 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:178 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:179 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:180 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:181 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:182 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:183 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:184 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:185 with lines ls 3;
plot "ports-over-time-top10.gt10.csv" using 1:186 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:187 with lines ls 11;
plot "ports-over-time-top10.gt10.csv" using 1:188 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:189 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:190 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:191 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:192 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:193 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:194 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:195 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:196 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:197 with lines ls 9;
plot "ports-over-time-top10.gt10.csv" using 1:198 with lines ls 13;
plot "ports-over-time-top10.gt10.csv" using 1:199 with lines ls 12;
plot "ports-over-time-top10.gt10.csv" using 1:200 with lines ls 8;
plot "ports-over-time-top10.gt10.csv" using 1:201 with lines ls 2;
plot "ports-over-time-top10.gt10.csv" using 1:202 with lines ls 10;
plot "ports-over-time-top10.gt10.csv" using 1:203 with lines ls 6;
plot "ports-over-time-top10.gt10.csv" using 1:204 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:205 with lines ls 1;
plot "ports-over-time-top10.gt10.csv" using 1:206 with lines ls 4;
plot "ports-over-time-top10.gt10.csv" using 1:207 with lines ls 5;
plot "ports-over-time-top10.gt10.csv" using 1:208 with lines ls 11;

