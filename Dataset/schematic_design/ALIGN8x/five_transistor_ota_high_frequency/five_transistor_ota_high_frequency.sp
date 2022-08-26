.subckt five_transistor_ota_high_frequency vinn_ota vinp_ota vout_ota id_ota vdd_ota vss_ota
m5 vout_ota net19 vdd_ota vdd_ota pmos_rvt m=1 l=14e-9 nfin=12 nf=16
m4 net19 net19 vdd_ota vdd_ota pmos_rvt l=14e-9 nfin=12 nf=16
m3 id_ota id_ota vss_ota vss_ota nmos_rvt m=1 l=14e-9 nfin=12 nf=16
m2 net017 id_ota vss_ota vss_ota nmos_rvt m=1 l=14e-9 nfin=12 nf=128
m1 vout_ota vinn_ota net017 vss_ota nmos_rvt m=1 l=14e-9 nfin=12 nf=320
m0 net19 vinp_ota net017 vss_ota nmos_rvt m=1 l=14e-9 nfin=12 nf=320
.ends