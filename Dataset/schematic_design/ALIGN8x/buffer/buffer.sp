.subckt buffer vin vout vdd vss
mp1 vxx  vin vdd vdd p w=270e-9 l=20e-9 nfin=6 nf=16
mn1 vxx  vin vss vss n w=270e-9 l=20e-9 nfin=6 nf=16
mp2 vout vxx vdd vdd p w=270e-9 l=20e-9 nfin=12 nf=16
mn2 vout vxx vss vss n w=270e-9 l=20e-9 nfin=12 nf=32
.ends buffer
