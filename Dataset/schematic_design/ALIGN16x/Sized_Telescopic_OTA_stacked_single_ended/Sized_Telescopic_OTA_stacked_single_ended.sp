.subckt Sized_Telescopic_OTA_stacked_single_ended d1 vdd vinn vinp vss vout
m9 vpgate vbiasn net8s vss nmos w=4320e-9 l=20e-9 nfin=7 nf=10
m9s net8s vbiasn net8 vss nmos w=4320e-9 l=20e-9 nfin=7 nf=10
m8 vout vbiasn net014s vss nmos w=4320e-9 l=20e-9 nfin=7 nf=10
m8s net014s vbiasn net014 vss nmos w=4320e-9 l=20e-9 nfin=7 nf=10
m5 D1 D1 netm5s vss nmos w=4320e-9 l=20e-9 nfin=10 nf=2
m5s netm5s D1 vss vss nmos w=4320e-9 l=20e-9 nfin=10 nf=2
m4 net10 D1 netm4s vss nmos w=4320e-9 l=20e-9 nfin=10 nf=10
m4s netm4s D1 vss vss nmos w=4320e-9 l=20e-9 nfin=10 nf=10
m3 net014 vinn netm3s vss nmos w=4320e-9 l=20e-9 nfin=10 nf=14
m3s netm3s vinn net10 vss nmos w=4320e-9 l=20e-9 nfin=10 nf=14
m0 net8 vinp netm0s vss nmos w=4320e-9 l=20e-9 nfin=10 nf=14
m0s netm0s vinp net10 vss nmos w=4320e-9 l=20e-9 nfin=10 nf=14
m7 vout vbiasp net012s vdd pmos w=4320e-9 l=20e-9 nfin=11 nf=10
m7s net012s vbiasp net012 vdd pmos w=4320e-9 l=20e-9 nfin=11 nf=10
m6 vpgate vbiasp net06s vdd pmos w=4320e-9 l=20e-9 nfin=11 nf=10
m6s net06s vbiasp net06 vdd pmos w=4320e-9 l=20e-9 nfin=11 nf=10
m2 net012 vpgate netm2s vdd pmos w=4320e-9 l=20e-9 nfin=6 nf=8
m2s netm2s vpgate vdd vdd pmos w=4320e-9 l=20e-9 nfin=6 nf=8
m1 net06 vpgate netm1s vdd pmos w=4320e-9 l=20e-9 nfin=6 nf=8
m1s netm1s vpgate vdd vdd pmos w=4320e-9 l=20e-9 nfin=6 nf=8
m10 vbiasn vbiasn net5s vss nmos w=4320e-9 l=20e-9 nfin=5
m10s net5s vbiasn net5 vss nmos w=4320e-9 l=20e-9 nfin=5
m11 net5 vbiasn netm11s vss nmos w=4320e-9 l=20e-9 nfin=10
m11s netm11s vbiasn net10 vss nmos w=4320e-9 l=20e-9 nfin=10
m15 net9 d1 netm15s vss nmos w=4320e-9 l=20e-9 nfin=10
m15s netm15s d1 vss vss nmos w=4320e-9 l=20e-9 nfin=10
m16 net9 net9 netm16s vdd pmos w=4320e-9 l=20e-9 nfin=10
m16s netm16s net9 vdd vdd pmos w=4320e-9 l=20e-9 nfin=10
m17 vbiasn net9 netm17s vdd pmos w=4320e-9 l=20e-9 nfin=10
m17s netm17s net9 vdd vdd pmos w=4320e-9 l=20e-9 nfin=10
m12 vbiasp d1 netm12s vss nmos w=4320e-9 l=20e-9 nfin=10
m12s netm12s d1 vss vss nmos w=4320e-9 l=20e-9 nfin=10
m13 vbiasp vbiasp netm13s vdd pmos w=4320e-9 l=20e-9 nfin=5
m13s netm13s vbiasp net7 vdd pmos w=4320e-9 l=20e-9 nfin=5
m14 net7 vbiasp netm14s vdd pmos w=4320e-9 l=20e-9 nfin=10
m14s netm14s vbiasp vdd vdd pmos w=4320e-9 l=20e-9 nfin=10
.ends Sized_Telescopic_OTA_stacked_single_ended
