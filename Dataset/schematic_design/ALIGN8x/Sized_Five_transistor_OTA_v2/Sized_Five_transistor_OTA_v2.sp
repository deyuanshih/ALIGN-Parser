
.subckt Sized_Five_transistor_OTA_v2 vout net2 net15 net17 vdd vss
m5 net2 net2 vss vss nmos w=2160e-9 l=20e-9 nfin=10
m4 net10 net2 vss vss nmos w=2160e-9 l=20e-9 nfin=10 nf=4
m3 vout net15 net10 vss nmos w=2160e-9 l=20e-9 nfin=10 nf=16
m0 net8 net17 net10 vss nmos w=2160e-9 l=20e-9 nfin=10 nf=16
m2 vout net8 vdd vdd pmos w=2160e-9 l=20e-9 nfin=10 nf=10
m1 net8 net8 vdd vdd pmos w=2160e-9 l=20e-9 nfin=10 nf=10

.ends Sized_Five_transistor_OTA_v2
