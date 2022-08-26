.subckt Sized_Five_transistor_OTA vinn_ota vinp_ota vout_ota id_ota vdd_ota vss_ota
mp1 vout_ota net19 vdd_ota vdd_ota pmos m=5 l=14e-9 nfin=2 nf=8
mp0 net19 net19 vdd_ota vdd_ota pmos m=5 l=14e-9 nfin=2 nf=8
mn3 id_ota id_ota vss_ota vss_ota nmos m=1 l=14e-9 nfin=4 nf=8
mn2 net017 id_ota vss_ota vss_ota nmos m=5 l=14e-9 nfin=4 nf=8
mn1 vout_ota vinn_ota net017 vss_ota nmos m=5 l=14e-9 nfin=9 nf=8
mn0 net19 vinp_ota net017 vss_ota nmos m=5 l=14e-9 nfin=9 nf=8
.ends Sized_Five_transistor_OTA
