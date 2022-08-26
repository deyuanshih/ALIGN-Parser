
.subckt Sized_linear_equalizer_2_switches vmirror s0 s1 vin1 vin2 vout1 vout2 vps vgnd
MN00 vout1 vin1 n1 vgnd nmos l=0.014u nfin=12 nf=32
MN01 n1 vin1 n2 vgnd nmos l=0.014u nfin=12 nf=32
MN02 vout2 vin2 n4 vgnd nmos l=0.014u nfin=12 nf=32
MN03 n4 vin2 n3 vgnd nmos l=0.014u nfin=12 nf=32
MN04 n2 vmirror n5 vgnd nmos l=0.014u nfin=12 nf=128
MN05 n5 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=128
MN06 n3 vmirror n6 vgnd nmos l=0.014u nfin=12 nf=128
MN07 n6 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=128
MN08 vmirror vmirror n7 vgnd nmos l=0.014u nfin=12 nf=128
MN09 n7 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=128
MN10 n21 s0 n31 vgnd nmos l=0.014u nfin=12 nf=32
MN11 n22 s1 n32 vgnd nmos l=0.014u nfin=12 nf=32
Rs1 n2 n21 9600
Rs2 n31 n3 9600
Cs110 n2 n22 1p
Cs120 n2 n22 1p
Cs111 n2 n22 1p
Cs121 n2 n22 1p
Cs210 n32 n3 1p
Cs220 n32 n3 1p
Cs211 n32 n3 1p
Cs221 n32 n3 1p
Cs1110 n2 n22 1p
Cs1120 n2 n22 1p
Cs1111 n2 n22 1p
Cs1121 n2 n22 1p
Cs1210 n32 n3 1p
Cs1220 n32 n3 1p
Cs1211 n32 n3 1p
Cs1221 n32 n3 1p
R1 vps vout1 9600
R0 vps vout2 9600
.ends Sized_linear_equalizer_2_switches

