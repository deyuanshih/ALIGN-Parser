
.subckt Sized_linear_equalizer_4_switches vmirror s0 s1 s2 s3 vin1 vin2 vout1 vout2 vps vgnd
MN00 vout1 vin1 n1 vgnd nmos l=0.014u nfin=12 nf=16
MN01 n1 vin1 n2 vgnd nmos l=0.014u nfin=12 nf=16
MN02 vout2 vin2 n3 vgnd nmos l=0.014u nfin=12 nf=16
MN03 n3 vin2 n4 vgnd nmos l=0.014u nfin=12 nf=16
MN04 n2 vmirror n5 vgnd nmos l=0.014u nfin=12 nf=64
MN05 n5 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=64
MN06 n4 vmirror n6 vgnd nmos l=0.014u nfin=12 nf=64
MN07 n6 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=64
MN08 vmirror vmirror n7 vgnd nmos l=0.014u nfin=12 nf=64
MN09 n7 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=64

MN10 n21 s0 n31 vgnd nmos l=0.014u nfin=12 nf=16
MN11 n22 s1 n32 vgnd nmos l=0.014u nfin=12 nf=16
MN12 n23 s2 n33 vgnd nmos l=0.014u nfin=12 nf=16
MN13 n24 s3 n34 vgnd nmos l=0.014u nfin=12 nf=16

Rs1 n2 n21 4800
Rs2 n31 n4 4800
Cs110 n2 n22 1p
Cs120 n2 n22 1p
Cs210 n32 n4 1p
Cs220 n32 n4 1p
Cs111 n2 n22 1p
Cs121 n2 n22 1p
Cs211 n32 n4 1p
Cs221 n32 n4 1p

Rs3 n2 n23 4800
Rs4 n33 n4 4800
Cs310 n2 n24 1p
Cs320 n2 n24 1p
Cs410 n34 n4 1p
Cs420 n34 n4 1p
Cs311 n2 n24 1p
Cs321 n2 n24 1p
Cs411 n34 n4 1p
Cs421 n34 n4 1p

R1 vps vout1 9600
R0 vps vout2 9600
.ends Sized_linear_equalizer_4_switches

