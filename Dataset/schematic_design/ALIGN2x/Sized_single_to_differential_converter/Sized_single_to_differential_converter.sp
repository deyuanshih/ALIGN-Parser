
.subckt Sized_single_to_differential_converter vin vb vd vs vps vgnd
MN0 vd n1 n2 vgnd nmos l=0.014u nfin=12 nf=6
MN1 n2 n1 vs vgnd nmos l=0.014u nfin=12 nf=6
R0 vb n1 40000
R1 vps vd 1800
R2 vs vgnd 1800
C0 vin n1 100f
.ends Sized_single_to_differential_converter


