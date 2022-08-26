.subckt Sized_Telescopic_OTA_fully_differential vinn vinp vbiasn vbiasp1 id vbiasp2 vdd vss voutn voutp

m9 voutn vbiasn net8 vss nmos w=540e-9 l=20e-9 nfin=12 nf=2
m8 voutp vbiasn net014 vss nmos w=540e-9 l=20e-9 nfin=12 nf=2
m5 id id vss vss nmos w=540e-9 l=20e-9 nfin=5 nf=2
m4 net10 id vss vss nmos w=540e-9 l=20e-9 nfin=5 nf=10
m3 net014 vinn net10 vss nmos w=540e-9 l=20e-9 nfin=7 nf=10
m0 net8 vinp net10 vss nmos w=540e-9 l=20e-9 nfin=7 nf=10
m7 voutp vbiasp2 net012 net012 pmos w=540e-9 l=20e-9 nfin=7 nf=2
m6 voutn vbiasp2 net06 net06 pmos w=540e-9 l=20e-9 nfin=7 nf=2
m2 net012 vbiasp1 vdd vdd pmos w=540e-9 l=20e-9 nfin=10
m1 net06 vbiasp1 vdd vdd pmos w=540e-9 l=20e-9 nfin=10

.ends
