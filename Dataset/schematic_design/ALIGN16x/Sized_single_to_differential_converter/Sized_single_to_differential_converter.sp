
.subckt Sized_single_to_differential_converter vin vb vd vs vps vgnd
MN0 vd n1 n2 vgnd nmos l=0.014u nfin=12 nf=48
MN1 n2 n1 vs vgnd nmos l=0.014u nfin=12 nf=48
R0 vb n1 160000
R1 vps vd 14400
R2 vs vgnd 14400
C0 vin n1 800f
.ends Sized_single_to_differential_converter


