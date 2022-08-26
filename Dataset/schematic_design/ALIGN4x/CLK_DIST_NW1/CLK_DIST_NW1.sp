** Library name: TO65_20200429
** Cell name: INVx1_8Phase
** View name: schematic
.subckt INVx1_8Phase_schematic in out vdd vss
m1 out in vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m0 out in vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
.ends INVx1_8Phase_schematic
** End of subcircuit definition.

** Library name: TO65_20200429
** Cell name: INVx4_8Phase
** View name: schematic
.subckt INVx4_8Phase in out vdd vss
m1 out in vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=8 nfin=8
m0 out in vss vss nmos_rvt l=60e-9 w=600e-9 nf=8 nfin=8
.ends INVx4_8Phase
** End of subcircuit definition.

** Library name: TO65_20200429
** Cell name: AND2
** View name: schematic
.subckt AND2 a b out vdd vss
m4 net26 b vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m6 out net21 vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m5 net21 a net26 vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m13 net21 b vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m14 net21 a vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m1 out net21 vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
.ends AND2
** End of subcircuit definition.

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

** Library name: TO65_20200429
** Cell name: Divider
** View name: schematic
** Digital
.subckt Divider clk clkb out<0> out<90> out<180> out<270> set setb vdd vss
xi0 clk clkb d<180> d<0> d<90> d<180> d<270> set setb vdd vss FF_DTG
m3<0> out<0> net012<0> vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m3<1> out<90> net012<1> vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m3<2> out<180> net012<2> vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m3<3> out<270> net012<3> vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m2<0> net012<0> d<0> vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m2<1> net012<1> d<90> vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m2<2> net012<2> d<180> vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m2<3> net012<3> d<270> vss vss nmos_rvt l=60e-9 w=600e-9 nf=2 nfin=8
m0<0> net012<0> d<0> vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m0<1> net012<1> d<90> vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m0<2> net012<2> d<180> vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m0<3> net012<3> d<270> vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m1<0> out<0> net012<0> vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m1<1> out<90> net012<1> vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m1<2> out<180> net012<2> vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
m1<3> out<270> net012<3> vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=2 nfin=8
.ends Divider
** End of subcircuit definition.

** Library name: TO65_20200429
** Cell name: 4Phase
** View name: schematic
** Digital
.subckt TO65_20200429_4Phase_schematic clk clkb ph<0> ph<1> ph<2> ph<3> set setb vdd vss
xi27<0> d1<0> clkb ph<0> vdd vss AND2
xi27<1> d1<90> clk ph<1> vdd vss AND2
xi27<2> d1<180> clkb ph<2> vdd vss AND2
xi27<3> d1<270> clk ph<3> vdd vss AND2
xi17 clk clkb d1<0> d1<90> d1<180> d1<270> set setb vdd vss Divider
.ends TO65_20200429_4Phase_schematic
** End of subcircuit definition.

** Library name: TO65_20200429
** Cell name: CLK_DIST_NW1
** View name: schematic
** Digital
.subckt CLK_DIST_NW1 clk clk0 clk180 clk270 clk90 clkb set setb vddd vssd
xi3 ph<3> net11 vddd vssd INVx1_8Phase_schematic
xi2 ph<2> net10 vddd vssd INVx1_8Phase_schematic
xi1 ph<1> net9 vddd vssd INVx1_8Phase_schematic
xi0 ph<0> net8 vddd vssd INVx1_8Phase_schematic
xi4 net8 clk0 vddd vssd INVx4_8Phase
xi5 net9 clk90 vddd vssd INVx4_8Phase
xi6 net10 clk180 vddd vssd INVx4_8Phase
xi7 net11 clk270 vddd vssd INVx4_8Phase
xi28 clk clkb ph<0> ph<1> ph<2> ph<3> set setb vddd vssd TO65_20200429_4Phase_schematic
.ends CLK_DIST_NW1
** End of subcircuit definition.