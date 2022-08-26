.subckt BSSW_WOTOD avdd avss phi vg vin vout
m13 phie phieb avss avss nlvt w=240n l=20n nf=16 nfin=4
m10 phieb net013 avss avss nlvt w=240n l=20n nf=16 nfin=4
m9 net013 phi avss avss nlvt w=240n l=20n nf=16 nfin=4
m5 net13 phieb net06 avss nlvt w=240n l=20n nf=16 nfin=4
m2 net13 vg net06 avss nlvt w=240n l=20n nf=16 nfin=4
m3 net016 avdd vg avss nlvt w=340n l=20n nf=16 nfin=4
m28 avss phie net016 avss nlvt w=240n l=20n nf=16 nfin=4
m24 net13 phie avss avss nlvt w=240n l=20n nf=16 nfin=4
m25 vout vg vin avss nlvt w=480n l=20n nf=16 nfin=4
m26 vin vg net13 avss nlvt w=240n l=20n nf=16 nfin=4
m12 phie phieb avdd avdd plvt w=340n l=20n nf=16 nfin=4
m11 phieb net013 avdd avdd plvt w=340n l=20n nf=16 nfin=4
m8 net013 phi avdd avdd plvt w=340n l=20n nf=16 nfin=4
m1 vg net06 net8 avdd plvt w=240n l=20n nf=16 nfin=4
m4 net06 phieb avdd avdd plvt w=240n l=20n nf=16 nfin=4
m0 net8 vg avdd avdd plvt w=240n l=20n nf=16 nfin=4
c00 net8 net13 1e-12
c01 net8 net13 1e-12
c02 net8 net13 1e-12
c03 net8 net13 1e-12
c10 net8 net13 1e-12
c11 net8 net13 1e-12
c12 net8 net13 1e-12
c13 net8 net13 1e-12
.ends BSSW_WOTOD