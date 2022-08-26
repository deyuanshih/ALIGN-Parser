#Use this file as a script for gnuplot
#(See http://www.gnuplot.info/ for details)

set title" #Blocks= 2, #Terminals= 2, #Nets= 2,Area=1.20422e+07, HPWL= 5088 "

set nokey
#   Uncomment these two lines starting with "set"
#   to save an EPS file for inclusion into a latex document
# set terminal postscript eps color solid 20
# set output "result.eps"

#   Uncomment these two lines starting with "set"
#   to save a PS file for printing
# set terminal postscript portrait color solid 20
# set output "result.ps"


set xrange [-50:1330]

set yrange [-50:9458]

set label "X_M0" at 640 , 2352 center 

set label "D" at 480 , 4536


set label "G" at 480 , 2856


set label "S" at 480 , 2772


set label "X_M1" at 640 , 7056 center 

set label "D" at 480 , 4872


set label "G" at 480 , 6552


set label "S" at 480 , 6636


set label "ZN" at 0 , 4536 center                

set label "I" at 0 , 2856 center                

plot[:][:] '-' with lines linestyle 3, '-' with lines linestyle 7, '-' with lines linestyle 1, '-' with lines linestyle 0

# block X_M0 select 0 bsize 4
	0	0
	0	4704
	1280	4704
	1280	0
	0	0

# block X_M1 select 0 bsize 4
	0	4704
	0	9408
	1280	9408
	1280	4704
	0	4704


EOF
	248	4568
	248	4504
	712	4504
	712	4568
	248	4568

	248	2888
	248	2824
	712	2824
	712	2888
	248	2888

	440	4440
	440	1104
	520	1104
	520	4440
	440	4440

	248	4840
	248	4904
	712	4904
	712	4840
	248	4840

	248	6520
	248	6584
	712	6584
	712	6520
	248	6520

	440	4968
	440	8304
	520	8304
	520	4968
	440	4968


EOF

	0	4536
	0	4536
	0	4536
	0	4536
	0	4536

	0	2856
	0	2856
	0	2856
	0	2856
	0	2856

EOF

#Net: ZN
	480	4536
	480	4872
	480	4536

	480	4536
	0	4536
	480	4536


#Net: I
	480	2856
	480	6552
	480	2856

	480	2856
	0	2856
	480	2856


EOF

pause -1 'Press any key'