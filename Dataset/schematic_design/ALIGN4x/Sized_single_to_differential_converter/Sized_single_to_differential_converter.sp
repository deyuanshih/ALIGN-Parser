
.subckt Sized_single_to_differential_converter vin vb vd vs vps vgnd
MN0 vd n1 n2 vgnd nmos l=0.014u nfin=12 nf=12
MN1 n2 n1 vs vgnd nmos l=0.014u nfin=12 nf=12
R0 vb n1 80000
R1 vps vd 3600
R2 vs vgnd 3600
C0 vin n1 200f
.ends Sized_single_to_differential_converter


