** Library name: TO65_20200429
** Cell name: AND2
** View name: schematic
.subckt AND2 a b out vdd vss
m4 net26 b vss vss nmos_rvt l=60e-9 w=600e-9 nf=8 nfin=8
m6 out net21 vss vss nmos_rvt l=60e-9 w=600e-9 nf=8 nfin=8
m5 net21 a net26 vss nmos_rvt l=60e-9 w=600e-9 nf=8 nfin=8
m13 net21 b vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=8 nfin=8
m14 net21 a vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=8 nfin=8
m1 out net21 vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=8 nfin=8
.ends AND2
** End of subcircuit definition.