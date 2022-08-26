.subckt INVx1_75t_R a y vdd vss
m0 y a vss vss nmos w=324e-9 l=20e-9 nfin=6 nf=2
m1 y a vdd vdd pmos w=324e-9 l=20e-9 nfin=6 nf=2
.ends INVx1_75t_R

.subckt INVx1_75t_R_21 a y vdd vss
m0 y a vss vss nmos w=324e-9 l=20e-9 nfin=10 nf=8
m1 y a vdd vdd pmos w=324e-9 l=20e-9 nfin=10 nf=8
.ends INVx1_75t_R_21

.subckt DC_converter_2018_12_03_transmission_gate a y vdd vss
m0 y vdd a vss nmos w=324e-9 l=20e-9 nfin=6 nf=2
m1 y vss a vdd pmos w=324e-9 l=20e-9 nfin=6 nf=2
.ends DC_converter_2018_12_03_transmission_gate

.subckt DC_converter_2018_11_09_NAND_gate_schematic a b out vdd vss
m2 out a net22 vss nmos w=216e-9 l=20e-9 nfin=4 nf=2
m3 net22 b vss vss nmos w=216e-9 l=20e-9 nfin=4 nf=2
m0 out a vdd vdd pmos w=54e-9 l=20e-9 nfin=4 nf=2
m1 out b vdd vdd pmos w=54e-9 l=20e-9 nfin=4 nf=2
.ends DC_converter_2018_11_09_NAND_gate_schematic




.subckt Sized_Telescopic_OTA_fully_differential_SC_cmfb clk vinp vinn vbiasp1 vbiasp2 vbiasn vcm vdd vss id


m9 voutn vbiasn net8 vss nmos w=2160e-9 l=20e-9 nfin=12 nf=4
m8 voutp vbiasn net014 vss nmos w=2160e-9 l=20e-9 nfin=12 nf=4
m5 id id vss vss nmos w=2160e-9 l=20e-9 nfin=5 nf=4
m4 net10 id vss vss nmos w=2160e-9 l=20e-9 nfin=5 nf=20
m3 net014 vinn net10 vss nmos w=2160e-9 l=20e-9 nfin=7 nf=20
m0 net8 vinp net10 vss nmos w=2160e-9 l=20e-9 nfin=7 nf=20
m7 voutp vbiasp2 net012 vdd pmos w=2160e-9 l=20e-9 nfin=7 nf=4
m6 voutn vbiasp2 net06 vdd pmos w=2160e-9 l=20e-9 nfin=7 nf=4
m2 net012 vbiasp1 vdd vdd pmos w=2160e-9 l=20e-9 nfin=10 nf=2
m1 net06 vbiasp1 vdd vdd pmos w=2160e-9 l=20e-9 nfin=10 nf=2

xi6 clk netx9 vdd vss INVx1_75t_R
xi6_tg clk netx9_tg vdd vss DC_converter_2018_12_03_transmission_gate
xi5 netx12 phi2 vdd vss INVx1_75t_R_21
xi4 netx17 netx12 vdd vss INVx1_75t_R
xi3 netx8 phi1 vdd vss INVx1_75t_R_21
xi2 netx15 netx8 vdd vss INVx1_75t_R
xi1 netx16 netx15 vdd vss INVx1_75t_R
xi0 netx18 netx17 vdd vss INVx1_75t_R
xi8 netx9 netx8 netx18 vdd vss DC_converter_2018_11_09_NAND_gate_schematic
xi7 netx12 netx9_tg netx16 vdd vss DC_converter_2018_11_09_NAND_gate_schematic


c3 netc10 vg 320e-15
c2 vg netc8 320e-15
m14 id phi2 vg vss nmos w=216e-9 l=20e-9 nfin=5 nf=20
m13 vcm phi2 netc10 vss nmos w=216e-9 l=20e-9 nfin=5 nf=20
m12 voutp phi1 netc10 vss nmos w=216e-9 l=20e-9 nfin=5 nf=20
m11 netc8 phi2 vcm vss nmos w=216e-9 l=20e-9 nfin=5 nf=20
m10 netc8 phi1 voutn vss nmos w=216e-9 l=20e-9 nfin=5 nf=20

.ends Sized_Telescopic_OTA_fully_differential_SC_cmfb
