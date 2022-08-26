
.subckt Sized_single_to_differential_converter vin vb vd vs vps vgnd
MN0 vd n1 n2 vgnd nmos l=0.014u nfin=12 nf=24
MN1 n2 n1 vs vgnd nmos l=0.014u nfin=12 nf=24
R0 vb n1 160000
R1 vps vd 7200
R2 vs vgnd 7200
C0 vin n1 400f
.ends Sized_single_to_differential_converter


