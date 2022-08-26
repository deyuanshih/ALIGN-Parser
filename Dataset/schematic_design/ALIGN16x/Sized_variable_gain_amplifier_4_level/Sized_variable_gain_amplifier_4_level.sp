
.subckt Sized_variable_gain_amplifier_4_level vmirror s0 s1 vin1 vin2 vout1 vout2 vps vgnd
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

MN16 vout1 vin1 n11 vgnd nmos l=0.014u nfin=12 nf=48
MN17 n11 vin1 n12 vgnd nmos l=0.014u nfin=12 nf=48
MN18 vout2 vin2 n13 vgnd nmos l=0.014u nfin=12 nf=48
MN19 n13 vin2 n12 vgnd nmos l=0.014u nfin=12 nf=48
MN20 n12 s1 n14 vgnd nmos l=0.014u nfin=12 nf=48
MN21 n14 s1 n15 vgnd nmos l=0.014u nfin=12 nf=48
MN22 n15 vmirror n16 vgnd nmos l=0.014u nfin=12 nf=128
MN23 n16 vmirror vgnd vgnd nmos l=0.014u nfin=12 nf=128
R1 vps vout1 5088
R0 vps vout2 5088
.ends Sized_variable_gain_amplifier_4_level

