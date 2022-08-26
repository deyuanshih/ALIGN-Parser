
.subckt Sized_variable_gain_amplifier vmirror s0 vin1 vin2 vout1 vout2 vps vgnd
MN00 vout1 vin1 n1 vgnd nmos l=0.014u nfin=12 nf=48
MN01 n1 vin1 vcm vgnd nmos l=0.014u nfin=12 nf=48
MN02 vout2 vin2 n2 vgnd nmos l=0.014u nfin=12 nf=48
MN03 n2 vin2 vcm vgnd nmos l=0.014u nfin=12 nf=48
MN04 vcm vmirror n3 vgnd nmos l=0.014u nfin=12 nf=128
MN05 n3 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=128
MN06 vmirror vmirror n4 vgnd nmos l=0.014u nfin=12 nf=128
MN07 n4 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=128
MN08 vout1 vin1 n5 vgnd nmos l=0.014u nfin=12 nf=48
MN09 n5 vin1 n7 vgnd nmos l=0.014u nfin=12 nf=48
MN10 vout2 vin2 n6 vgnd nmos l=0.014u nfin=12 nf=48
MN11 n6 vin2 n7 vgnd nmos l=0.014u nfin=12 nf=48
MN12 n7 s0 n8 vgnd nmos l=0.014u nfin=12 nf=48
MN13 n8 s0 n9 vgnd nmos l=0.014u nfin=12 nf=48
MN14 n9 vmirror n10 vgnd nmos l=0.014u nfin=12 nf=128
MN15 n10 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=128
R1 vps vout1 5088
R0 vps vout2 5088
.ends Sized_variable_gain_amplifier
