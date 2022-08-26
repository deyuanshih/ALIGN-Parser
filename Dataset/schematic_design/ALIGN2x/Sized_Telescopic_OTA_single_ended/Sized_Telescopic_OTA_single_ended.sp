
.subckt Sized_Telescopic_OTA_single_ended d1 vdd vinn vinp vss vout vbiasn vbiasp
m9 vpgate vbiasn net8 vss nmos w=540e-9 l=20e-9 nfin=9 nf=4
m8 vout vbiasn net014 vss nmos w=540e-9 l=20e-9 nfin=9 nf=4
m5 D1 D1 vss vss nmos w=540e-9 l=20e-9 nfin=5
m4 net10 D1 vss vss nmos w=540e-9 l=20e-9 nfin=12 nf=2
m3 net014 vinn net10 vss nmos w=540e-9 l=20e-9 nfin=7 nf=10
m0 net8 vinp net10 vss nmos w=540e-9 l=20e-9 nfin=7 nf=10
m7 vout vbiasp net012 vdd pmos w=540e-9 l=20e-9 nfin=7 nf=8
m6 vpgate vbiasp net06 vdd pmos w=540e-9 l=20e-9 nfin=7 nf=8
m2 net012 vpgate vdd vdd pmos w=540e-9 l=20e-9 nfin=10 nf=2
m1 net06 vpgate vdd vdd pmos w=540e-9 l=20e-9 nfin=10 nf=2
m10 vbiasn vbiasn net5 vss nmos w=540e-9 l=20e-9 nfin=4
m11 net5 vbiasn net10 vss nmos w=540e-9 l=20e-9 nfin=5
m15 net9 d1 vss vss nmos w=540e-9 l=20e-9 nfin=5
m16 net9 net9 vdd vdd pmos w=540e-9 l=20e-9 nfin=5
m17 vbiasn net9 vdd vdd pmos w=540e-9 l=20e-9 nfin=5
m12 vbiasp d1 vss vss nmos w=540e-9 l=20e-9 nfin=5
m13 vbiasp vbiasp net7 vdd pmos w=540e-9 l=20e-9 nfin=4
m14 net7 vbiasp vdd vdd pmos w=540e-9 l=20e-9 nfin=5
.ends Sized_Telescopic_OTA_single_ended

