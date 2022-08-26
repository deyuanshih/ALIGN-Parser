#Use this file as a script for gnuplot
#(See http://www.gnuplot.info/ for details)

set title" #Blocks= 2, #Terminals= 5, #Nets= 5,Area=1.20422e+07, HPWL= 9376 "

set nokey
#   Uncomment these two lines starting with "set"
#   to save an EPS file for inclusion into a latex document
# set terminal postscript eps color solid 20
# set output "result.eps"

#   Uncomment these two lines starting with "set"
#   to save a PS file for printing
# set terminal postscript portrait color solid 20
# set output "result.ps"


set xrange [-50:2610]

set yrange [-50:4754]

set label "X_M1" at 640 , 2352 center 

set label "D" at 800 , 168


set label "G" at 800 , 1848


set label "S" at 800 , 1932


set label "X_M2" at 1920 , 2352 center 

set label "D" at 1760 , 168


set label "G" at 1760 , 1848


set label "S" at 1760 , 1932


set label "DA" at 0 , 168 center                

set label "G" at 0 , 1848 center                

set label "SA" at 0 , 1932 center                

set label "DB" at 2560 , 168 center                

set label "SB" at 2560 , 1932 center                

plot[:][:] '-' with lines linestyle 3, '-' with lines linestyle 7, '-' with lines linestyle 1, '-' with lines linestyle 0

# block X_M1 select 0 bsize 4
	0	0
	0	4704
	1280	4704
	1280	0
	0	0

# block X_M2 select 0 bsize 4
	1280	0
	1280	4704
	2560	4704
	2560	0
	1280	0


EOF
	1032	136
	1032	200
	568	200
	568	136
	1032	136

	1032	1816
	1032	1880
	568	1880
	568	1816
	1032	1816

	840	264
	840	3600
	760	3600
	760	264
	840	264

	1528	136
	1528	200
	1992	200
	1992	136
	1528	136

	1528	1816
	1528	1880
	1992	1880
	1992	1816
	1528	1816

	1720	264
	1720	3600
	1800	3600
	1800	264
	1720	264


EOF

	0	168
	0	168
	0	168
	0	168
	0	168

	0	1848
	0	1848
	0	1848
	0	1848
	0	1848

	0	1932
	0	1932
	0	1932
	0	1932
	0	1932

	2560	168
	2560	168
	2560	168
	2560	168
	2560	168

	2560	1932
	2560	1932
	2560	1932
	2560	1932
	2560	1932

EOF

#Net: DA
	800	168
	0	168
	800	168


#Net: G
	800	1848
	1760	1848
	800	1848

	800	1848
	0	1848
	800	1848


#Net: SA
	800	1932
	0	1932
	800	1932


#Net: DB
	1760	168
	2560	168
	1760	168


#Net: SB
	1760	1932
	2560	1932
	1760	1932


EOF

pause -1 'Press any key'