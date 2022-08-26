
.subckt Sized_Current_mirror_OTA id vinn vinp vdd vss voutp vbiasnd
c2 voutp vss 1000e-15
m17 net16 vinn net24 vss nmos w=108e-9 l=20e-9 nfin=7 nf=8
m16 net24 id vss vss nmos w=108e-9 l=20e-9 nfin=10
m15 net27 vinp net24 vss nmos w=108e-9 l=20e-9 nfin=7 nf=8
m14 id id vss vss nmos w=108e-9 l=20e-9 nfin=10 nf=2
m11 vbiasnd vbiasnd vss vss nmos w=108e-9 l=20e-9 nfin=6 nf=8
m10 voutp vbiasnd vss vss nmos w=108e-9 l=20e-9 nfin=6 nf=8
m21 net16 net16 vdd vdd pmos w=108e-9 l=20e-9 nfin=10 nf=12
m20 m20stack net16 vdd vdd pmos w=108e-9 l=20e-9 nfin=10 nf=48
m20s vbiasnd net16 m20stack vdd pmos w=108e-9 l=20e-9 nfin=10 nf=48
m19 net27 net27 vdd vdd pmos w=108e-9 l=20e-9 nfin=10 nf=12
m18 m18stack net27 vdd vdd pmos w=108e-9 l=20e-9 nfin=10 nf=48
m18s voutp net27 m18stack vdd pmos w=108e-9 l=20e-9 nfin=10 nf=48
.ends Sized_Current_mirror_OTA
