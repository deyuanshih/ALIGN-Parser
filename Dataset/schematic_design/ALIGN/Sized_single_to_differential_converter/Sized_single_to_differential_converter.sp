
.subckt Sized_single_to_differential_converter vin vb vd vs vps vgnd
MN0 vd n1 n2 vgnd nmos l=0.014u nfin=6 nf=6
MN1 n2 n1 vs vgnd nmos l=0.014u nfin=6 nf=6
R0 vb n1 20000
R1 vps vd 900
R2 vs vgnd 900
C0 vin n1 50f
.ends Sized_single_to_differential_converter


