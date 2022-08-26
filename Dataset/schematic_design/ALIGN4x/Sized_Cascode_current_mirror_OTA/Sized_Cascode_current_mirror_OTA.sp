** Library name: DC_converter
** Cell name: 2018_11_09_current_mirror_ota
** View name: schematic

.subckt Sized_Cascode_current_mirror_OTA id vinn vinp voutp vbiasn vbiasp vdd vss
c2 voutp vss 714e-15
m25 voutp vbiasn net034 vss nmos w=108e-9 l=20e-9 nfin=12 nf=2
m24 vbiasnd vbiasn net033 vss nmos w=108e-9 l=20e-9 nfin=12 nf=2
m17 net16 vinn net24 vss nmos w=108e-9 l=20e-9 nfin=5 nf=6
m16 net24 id vss vss nmos w=108e-9 l=20e-9 nfin=8 nf=2
m15 net27 vinp net24 vss nmos w=108e-9 l=20e-9 nfin=5 nf=6
m14 id id vss vss nmos w=108e-9 l=20e-9 nfin=8 nf=2
m11 net033 vbiasnd vss vss nmos w=108e-9 l=20e-9 nfin=5 nf=6
m10 net034 vbiasnd vss vss nmos w=108e-9 l=20e-9 nfin=5 nf=6
m1nup vbiasn vbiasn net9b vss nmos w=1080e-9 l=20e-9 nfin=3
m1ndown net9b net9b vss vss nmos w=1080e-9 l=20e-9 nfin=5

m1pup net8b net8b vdd vdd pmos w=1080e-9 l=20e-9 nfin=5
m1pdown vbiasp vbiasp net8b net8b pmos w=1080e-9 l=20e-9 nfin=5

m27 net27 vbiasp net021 net021 pmos w=108e-9 l=20e-9 nfin=6 nf=10
m26 net16 vbiasp net015 net015 pmos w=108e-9 l=20e-9 nfin=6 nf=10
m23 voutp vbiasp net024 net024 pmos w=108e-9 l=20e-9 nfin=12 nf=10
m22 vbiasnd vbiasp net06 net06 pmos w=108e-9 l=20e-9 nfin=12 nf=10
m21 net015 net16 vdd vdd pmos w=108e-9 l=20e-9 nfin=5
m20 net06 net16 vdd vdd pmos w=108e-9 l=20e-9 nfin=10
m19 net021 net27 vdd vdd pmos w=108e-9 l=20e-9 nfin=5
m18 net024 net27 vdd vdd pmos w=108e-9 l=20e-9 nfin=10
.ends Sized_Cascode_current_mirror_OTA
