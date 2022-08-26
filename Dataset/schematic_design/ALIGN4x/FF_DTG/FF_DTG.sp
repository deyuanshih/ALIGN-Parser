
** Library name: TO65_20200429
** Cell name: FF_DTG
** View name: schematic
** Digital
.subckt FF_DTG clk clkb in out0 out90 out180 out270 set setb vdd vss
m1 in setb vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m2 net59 in vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m3 net_l1 out90 vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m5 net023 net_l1 vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m14 net59 clkb out90 vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m12 net_l1 clk out0 vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m11 net023 clk out180 vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m6 net026 net59 vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m10 net026 clkb out270 vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m20 out90 clk net59 vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m0 in set vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m4 net59 in vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m8 net023 net_l1 vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m7 net_l1 out90 vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m17 out0 clkb net_l1 vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m13 out270 clk net026 vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m16 out180 clkb net023 vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m9 net026 net59 vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
.ends FF_DTG
** End of subcircuit definition.