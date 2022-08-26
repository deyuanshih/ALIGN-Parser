
.subckt Sized_linear_equalizer_2_switches vmirror s0 s1 vin1 vin2 vout1 vout2 vps vgnd
MN00 vout1 vin1 n1 vgnd nmos l=0.014u nfin=12 nf=4
MN01 n1 vin1 n2 vgnd nmos l=0.014u nfin=12 nf=4
MN02 vout2 vin2 n4 vgnd nmos l=0.014u nfin=12 nf=4
MN03 n4 vin2 n3 vgnd nmos l=0.014u nfin=12 nf=4
MN04 n2 vmirror n5 vgnd nmos l=0.014u nfin=12 nf=16
MN05 n5 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=16
MN06 n3 vmirror n6 vgnd nmos l=0.014u nfin=12 nf=16
MN07 n6 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=16
MN08 vmirror vmirror n7 vgnd nmos l=0.014u nfin=12 nf=16
MN09 n7 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=16
MN10 n21 s0 n31 vgnd nmos l=0.014u nfin=12 nf=4
MN11 n22 s1 n32 vgnd nmos l=0.014u nfin=12 nf=4
Rs1 n2 n21 1200
Rs2 n31 n3 1200
Cs11 n2 n22 1p
Cs12 n2 n22 1p
Cs21 n32 n3 1p
Cs22 n32 n3 1p
R1 vps vout1 2400
R0 vps vout2 2400
.ends Sized_linear_equalizer_2_switches

