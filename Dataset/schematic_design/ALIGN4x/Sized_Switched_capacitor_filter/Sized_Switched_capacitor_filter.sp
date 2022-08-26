.subckt telescopic_ota D1 vdd vinn vinp vss vbiasn vbiasp1 vbiasp2 voutn voutp
m9 voutn vbiasn net8 vss nmos w=540e-9 l=20e-9 nfin=12 nf=4
m8 voutp vbiasn net014 vss nmos w=540e-9 l=20e-9 nfin=12 nf=4
m5 D1 D1 vss vss nmos w=540e-9 l=20e-9 nfin=5 nf=4
m4 net10 D1 vss vss nmos w=540e-9 l=20e-9 nfin=5 nf=20
m3 net014 vinn net10 vss nmos w=540e-9 l=20e-9 nfin=7 nf=20
m0 net8 vinp net10 vss nmos w=540e-9 l=20e-9 nfin=7 nf=20
m7 voutp vbiasp2 net012 net012 pmos w=540e-9 l=20e-9 nfin=8 nf=4
m6 voutn vbiasp2 net06 net06 pmos w=540e-9 l=20e-9 nfin=8 nf=4
m2 net012 vbiasp1 vdd vdd pmos w=540e-9 l=20e-9 nfin=10 nf=2
m1 net06 vbiasp1 vdd vdd pmos w=540e-9 l=20e-9 nfin=10 nf=2
.ends telescopic_ota



.subckt INVx1_75t_R a y vdd vss
m0 y a vss vss nmos w=81e-9 l=20e-9 nfin=12
m1 y a vdd vdd pmos w=81e-9 l=20e-9 nfin=12
.ends INVx1_75t_R

.subckt INVx1_75t_R_21 a y vdd vss
m0 y a vss vss nmos w=81e-9 l=20e-9 nfin=10 nf=8
m1 y a vdd vdd pmos w=81e-9 l=20e-9 nfin=10 nf=8
.ends INVx1_75t_R_21

.subckt DC_converter_2018_12_03_transmission_gate a y vdd vss
m0 y vdd a vss nmos w=81e-9 l=20e-9 nfin=12
m1 y vss a a pmos w=81e-9 l=20e-9 nfin=12
.ends DC_converter_2018_12_03_transmission_gate

.subckt DC_converter_2018_11_09_NAND_gate_schematic a b out vdd vss
m2 out a net22 vss nmos w=54e-9 l=20e-9 nfin=8
m3 net22 b vss vss nmos w=54e-9 l=20e-9 nfin=8
m0 out a vdd vdd pmos w=13.5e-9 l=20e-9 nfin=8
m1 out b vdd vdd pmos w=13.5e-9 l=20e-9 nfin=8
.ends DC_converter_2018_11_09_NAND_gate_schematic

.subckt DC_converter_2018_11_09_non_overlapping_clock_generator_schematic clk d_vdd d_gnd phi1 phi2
xi6 clk net9 d_vdd d_gnd INVx1_75t_R
xi6_tg clk net9_tg d_dd d_gnd DC_converter_2018_12_03_transmission_gate
xi5 net12 phi2 d_vdd d_gnd INVx1_75t_R_21
xi4 net17 net12 d_vdd d_gnd INVx1_75t_R
xi3 net8 phi1 d_vdd d_gnd INVx1_75t_R_21
xi2 net15 net8 d_vdd d_gnd INVx1_75t_R
xi1 net16 net15 d_vdd d_gnd INVx1_75t_R
xi0 net18 net17 d_vdd d_gnd INVx1_75t_R
xi8 net9 net8 net18 d_vdd d_gnd DC_converter_2018_11_09_NAND_gate_schematic
xi7 net12 net9_tg net16 d_vdd d_gnd DC_converter_2018_11_09_NAND_gate_schematic
.ends DC_converter_2018_11_09_non_overlapping_clock_generator_schematic

.subckt DC_converter_2018_11_09_cmfb_schematic va vb vbias vcm vg phi1 phi2 vss
c3 net10 vg 40e-15
c2 vg net8 40e-15
m4 vbias phi2 vg vss nmos w=54e-9 l=20e-9 nfin=5 nf=20
m3 vcm phi2 net10 vss nmos w=54e-9 l=20e-9 nfin=5 nf=20
m2 vb phi1 net10 vss nmos w=54e-9 l=20e-9 nfin=5 nf=20
m1 net8 phi2 vcm vss nmos w=54e-9 l=20e-9 nfin=5 nf=20
m0 net8 phi1 va vss nmos w=54e-9 l=20e-9 nfin=5 nf=20
.ends DC_converter_2018_11_09_cmfb_schematic

.subckt Sized_Switched_capacitor_filter voutn voutp vinp vinn id agnd vss vdd phi1 phi2 vbiasn vbiasp1 vbiasp2
m0 voutn phi1 net67 vss nmos w=540e-9 l=20e-9 nfin=10
m7 net66 phi1 net63 vss nmos w=540e-9 l=20e-9 nfin=10
m6 net72 phi1 vinn vss nmos w=540e-9 l=20e-9 nfin=10
m3 agnd phi2 net67 vss nmos w=540e-9 l=20e-9 nfin=10
m5 agnd phi2 net63 vss nmos w=540e-9 l=20e-9 nfin=10
m4 net72 phi2 agnd vss nmos w=540e-9 l=20e-9 nfin=10
m8 net60 phi2 agnd vss nmos w=540e-9 l=20e-9 nfin=10
m11 agnd phi2 net68 vss nmos w=540e-9 l=20e-9 nfin=10
m9 agnd phi2 net62 vss nmos w=540e-9 l=20e-9 nfin=10
m10 net64 phi1 net62 vss nmos w=540e-9 l=20e-9 nfin=10
m12 net60 phi1 vinp vss nmos w=540e-9 l=20e-9 nfin=10
m14 voutp phi1 net68 vss nmos w=540e-9 l=20e-9 nfin=10
xi0 id vdd net64 net66 vss vbiasn vbiasp1 vbiasp2 voutn voutp telescopic_ota
c9 voutp vss 240e-15
c8 voutn vss 240e-15
c7 net62 net68 120e-15
c6 net64 voutp 240e-15
c5 vinn net64 120e-15
c4 net60 net62 240e-15
c3 net66 voutn 240e-15
c2 vinp net66 120e-15
c1 net63 net67 120e-15
c0 net72 net63 240e-15
//xi3 clk vdd vss phi1 phi2 DC_converter_2018_11_09_non_overlapping_clock_generator_schematic
//xi13 voutn voutp id vcm vg phi1 phi2 vss DC_converter_2018_11_09_cmfb_schematic

.ends Sized_Switched_capacitor_filter
