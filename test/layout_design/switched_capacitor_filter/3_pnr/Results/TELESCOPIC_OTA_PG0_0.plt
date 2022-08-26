#Use this file as a script for gnuplot
#(See http://www.gnuplot.info/ for details)

set title" #Blocks= 5, #Terminals= 8, #Nets= 13,Area=7.45114e+07, HPWL= 62184 "

set nokey
#   Uncomment these two lines starting with "set"
#   to save an EPS file for inclusion into a latex document
# set terminal postscript eps color solid 20
# set output "result.eps"

#   Uncomment these two lines starting with "set"
#   to save a PS file for printing
# set terminal postscript portrait color solid 20
# set output "result.ps"


set xrange [-50:2930]

set yrange [-50:25922]

set label "X_M4_M5" at 1440 , 2352 center 

set label "DA" at 960 , 3696


set label "DB" at 1440 , 4368


set label "S" at 1280 , 2688


set label "X_M1_M2" at 1440 , 11760 center 

set label "DA" at 1120 , 13944


set label "DB" at 1440 , 13776


set label "G" at 1440 , 12264


set label "S" at 1440 , 12096


set label "X_M6_M7" at 1440 , 16464 center 

set label "DA" at 960 , 18648


set label "DB" at 1920 , 18648


set label "G" at 960 , 16968


set label "G" at 1920 , 16968


set label "SA" at 960 , 16884


set label "SB" at 1920 , 16884


set label "X_M8_M9" at 1440 , 22344 center 

set label "B" at 1440 , 24696


set label "DA" at 1760 , 20160


set label "DB" at 1600 , 20328


set label "G" at 1120 , 21840


set label "SA" at 1440 , 20496


set label "SB" at 1280 , 20664


set label "X_M0_M3" at 1440 , 7056 center 

set label "B" at 1440 , 5880


set label "DA" at 1600 , 9240


set label "DB" at 1280 , 9072


set label "GA" at 1600 , 7560


set label "GB" at 1280 , 7392


set label "S" at 1440 , 8904


set label "D1" at 0 , 3696 center                

set label "VBIASP1" at 0 , 12264 center                

set label "VOUTN" at 0 , 18648 center                

set label "VOUTP" at 2880 , 18648 center                

set label "VBIASP2" at 0 , 16968 center                

set label "VBIASN" at 0 , 21840 center                

set label "VINP" at 2880 , 7560 center                

set label "VINN" at 0 , 7392 center                

plot[:][:] '-' with lines linestyle 3, '-' with lines linestyle 7, '-' with lines linestyle 1, '-' with lines linestyle 0

# block X_M4_M5 select 0 bsize 4
	0	0
	0	4704
	2880	4704
	2880	0
	0	0

# block X_M1_M2 select 0 bsize 4
	640	9408
	640	14112
	2240	14112
	2240	9408
	640	9408

# block X_M6_M7 select 0 bsize 4
	160	14112
	160	18816
	2720	18816
	2720	14112
	160	14112

# block X_M8_M9 select 0 bsize 4
	160	18816
	160	25872
	2720	25872
	2720	18816
	160	18816

# block X_M0_M3 select 0 bsize 4
	0	4704
	0	9408
	2880	9408
	2880	4704
	0	4704


EOF
	920	4608
	920	2784
	1000	2784
	1000	4608
	920	4608

	568	4400
	568	4336
	2312	4336
	2312	4400
	568	4400

	1240	4272
	1240	1104
	1320	1104
	1320	4272
	1240	4272

	888	13976
	888	13912
	1352	13912
	1352	13976
	888	13976

	1208	13808
	1208	13744
	1672	13744
	1672	13808
	1208	13808

	1208	12296
	1208	12232
	1672	12232
	1672	12296
	1208	12296

	1400	13680
	1400	10512
	1480	10512
	1480	13680
	1400	13680

	728	18680
	728	18616
	1192	18616
	1192	18680
	728	18680

	1688	18680
	1688	18616
	2152	18616
	2152	18680
	1688	18680

	728	17000
	728	16936
	1192	16936
	1192	17000
	728	17000

	1688	17000
	1688	16936
	2152	16936
	2152	17000
	1688	17000

	920	18552
	920	15216
	1000	15216
	1000	18552
	920	18552

	1880	18552
	1880	15216
	1960	15216
	1960	18552
	1880	18552

	2152	24664
	2152	24728
	728	24728
	728	24664
	2152	24664

	1800	18912
	1800	21408
	1720	21408
	1720	18912
	1800	18912

	1640	19080
	1640	21576
	1560	21576
	1560	19080
	1640	19080

	1160	20592
	1160	23088
	1080	23088
	1080	20592
	1160	20592

	1480	19248
	1480	21744
	1400	21744
	1400	19248
	1480	19248

	1320	19416
	1320	21912
	1240	21912
	1240	19416
	1320	19416

	2312	5912
	2312	5848
	568	5848
	568	5912
	2312	5912

	2312	9272
	2312	9208
	888	9208
	888	9272
	2312	9272

	1992	9104
	1992	9040
	568	9040
	568	9104
	1992	9104

	2312	7592
	2312	7528
	888	7528
	888	7592
	2312	7592

	1992	7424
	1992	7360
	568	7360
	568	7424
	1992	7424

	2472	8936
	2472	8872
	408	8872
	408	8936
	2472	8936


EOF

	0	3696
	0	3696
	0	3696
	0	3696
	0	3696

	0	12264
	0	12264
	0	12264
	0	12264
	0	12264

	0	18648
	0	18648
	0	18648
	0	18648
	0	18648

	2880	18648
	2880	18648
	2880	18648
	2880	18648
	2880	18648

	0	16968
	0	16968
	0	16968
	0	16968
	0	16968

	0	21840
	0	21840
	0	21840
	0	21840
	0	21840

	2880	7560
	2880	7560
	2880	7560
	2880	7560
	2880	7560

	0	7392
	0	7392
	0	7392
	0	7392
	0	7392

EOF

#Net: D1
	960	3696
	0	3696
	960	3696


#Net: NET10
	1440	4368
	1440	8904
	1440	4368


#Net: NET06
	1120	13944
	960	16884
	1120	13944


#Net: NET012
	1440	13776
	1920	16884
	1440	13776


#Net: VBIASP1
	1440	12264
	0	12264
	1440	12264


#Net: VOUTN
	960	18648
	1600	20328
	960	18648

	960	18648
	0	18648
	960	18648


#Net: VOUTP
	1920	18648
	1760	20160
	1920	18648

	1920	18648
	2880	18648
	1920	18648


#Net: VBIASP2
	960	16968
	0	16968
	960	16968


#Net: VBIASN
	1120	21840
	0	21840
	1120	21840


#Net: NET014
	1440	20496
	1280	9072
	1440	20496


#Net: NET8
	1280	20664
	1600	9240
	1280	20664


#Net: VINP
	1600	7560
	2880	7560
	1600	7560


#Net: VINN
	1280	7392
	0	7392
	1280	7392


EOF

pause -1 'Press any key'