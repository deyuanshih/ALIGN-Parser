
.subckt Sized_Adder vin vout vbn vbp vps vgnd
MN0 vout n1 n2 vgnd nmos l=0.014u nfin=6 nf=6
MN1 n2 n1 vgnd vgnd nmos l=0.014u nfin=6 nf=6
MP0 vout n3 n4 vps pmos l=0.014u nfin=6 nf=6
MP1 n4 n3 vps vps pmos l=0.014u nfin=6 nf=6
R0 vbn n1 20000
C0 vin n1 48f
R1 vbp n3 20000
C1 vin n3 48f
R2 vps vout 500
.ends Sized_Adder
