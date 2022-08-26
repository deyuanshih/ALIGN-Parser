** Library name: DC_converter
** Cell name: 2018_11_09_current_mirror_ota
** View name: schematic
.subckt Sized_Fully_differential_telescopic_OTA vbiasnd vbiasn vbiasp vbiasp1 vinn vinp voutn voutp D1 vdd vss

m9 voutn vbiasn net8 vss nmos w=1080e-9 l=20e-9 nfin=12 nf=4
m8 voutp vbiasn net014 vss nmos w=1080e-9 l=20e-9 nfin=12 nf=4
m5 D1 D1 vss vss nmos w=1080e-9 l=20e-9 nfin=10 nf=2
m4 net10 vbiasnd vss vss nmos w=1080e-9 l=20e-9 nfin=5 nf=20
m3 net014 vinn net10 vss nmos w=1080e-9 l=20e-9 nfin=7 nf=20
m0 net8 vinp net10 vss nmos w=1080e-9 l=20e-9 nfin=7 nf=20
m7 voutp vbiasp net012 net012 pmos w=1080e-9 l=20e-9 nfin=7 nf=4
m6 voutn vbiasp net06 net06 pmos w=1080e-9 l=20e-9 nfin=7 nf=4
m2 net012 vbiasp1 vdd vdd pmos w=1080e-9 l=20e-9 nfin=10 nf=2
m1 net06 vbiasp1 vdd vdd pmos w=1080e-9 l=20e-9 nfin=10 nf=2
c2 voutp vss 480e-15
c3 voutn vss 480e-15
.ends

