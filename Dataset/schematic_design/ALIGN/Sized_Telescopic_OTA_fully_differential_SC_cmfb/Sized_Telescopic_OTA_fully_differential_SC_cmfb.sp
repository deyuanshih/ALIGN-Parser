.subckt INVx1_75t_R a y vdd vss
m0 y a vss vss nmos w=81e-9 l=20e-9 nfin=3
m1 y a vdd vdd pmos w=81e-9 l=20e-9 nfin=3
.ends INVx1_75t_R

.subckt INVx1_75t_R_21 a y vdd vss
m0 y a vss vss nmos w=81e-9 l=20e-9 nfin=10 nf=2
m1 y a vdd vdd pmos w=81e-9 l=20e-9 nfin=10 nf=2
.ends INVx1_75t_R_21

.subckt DC_converter_2018_12_03_transmission_gate a y vdd vss
m0 y vdd a vss nmos w=81e-9 l=20e-9 nfin=3
m1 y vss a vdd pmos w=81e-9 l=20e-9 nfin=3
.ends DC_converter_2018_12_03_transmission_gate

.subckt DC_converter_2018_11_09_NAND_gate_schematic a b out vdd vss
m2 out a net22 vss nmos w=54e-9 l=20e-9 nfin=2
m3 net22 b vss vss nmos w=54e-9 l=20e-9 nfin=2
m0 out a vdd vdd pmos w=13.5e-9 l=20e-9 nfin=2
m1 out b vdd vdd pmos w=13.5e-9 l=20e-9 nfin=2
.ends DC_converter_2018_11_09_NAND_gate_schematic




.subckt Sized_Telescopic_OTA_fully_differential_SC_cmfb clk vinp vinn vbiasp1 vbiasp2 vbiasn vcm vdd vss id


m9 voutn vbiasn net8 vss nmos w=270e-9 l=20e-9 nfin=12 nf=2
m8 voutp vbiasn net014 vss nmos w=270e-9 l=20e-9 nfin=12 nf=2
m5 id id vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m4 net10 id vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=10
m3 net014 vinn net10 vss nmos w=270e-9 l=20e-9 nfin=7 nf=10
m0 net8 vinp net10 vss nmos w=270e-9 l=20e-9 nfin=7 nf=10
m7 voutp vbiasp2 net012 vdd pmos w=270e-9 l=20e-9 nfin=7 nf=2
m6 voutn vbiasp2 net06 vdd pmos w=270e-9 l=20e-9 nfin=7 nf=2
m2 net012 vbiasp1 vdd vdd pmos w=270e-9 l=20e-9 nfin=10
m1 net06 vbiasp1 vdd vdd pmos w=270e-9 l=20e-9 nfin=10

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


c3 netc10 vg 20e-15
c2 vg netc8 20e-15
m14 id phi2 vg vss nmos w=27e-9 l=20e-9 nfin=5 nf=10
m13 vcm phi2 netc10 vss nmos w=27e-9 l=20e-9 nfin=5 nf=10
m12 voutp phi1 netc10 vss nmos w=27e-9 l=20e-9 nfin=5 nf=10
m11 netc8 phi2 vcm vss nmos w=27e-9 l=20e-9 nfin=5 nf=10
m10 netc8 phi1 voutn vss nmos w=27e-9 l=20e-9 nfin=5 nf=10

.ends Sized_Telescopic_OTA_fully_differential_SC_cmfb
