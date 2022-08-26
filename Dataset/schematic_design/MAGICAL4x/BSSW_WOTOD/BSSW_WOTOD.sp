.subckt BSSW_WOTOD avdd avss phi vg vin vout
m13 phie phieb avss avss nlvt w=240n l=20n nf=2 nfin=8
m10 phieb net013 avss avss nlvt w=240n l=20n nf=2 nfin=8
m9 net013 phi avss avss nlvt w=240n l=20n nf=2 nfin=8
m5 net13 phieb net06 avss nlvt w=240n l=20n nf=2 nfin=8
m2 net13 vg net06 avss nlvt w=240n l=20n nf=2 nfin=8
m3 net016 avdd vg avss nlvt w=340n l=20n nf=2 nfin=8
m28 avss phie net016 avss nlvt w=240n l=20n nf=2 nfin=8
m24 net13 phie avss avss nlvt w=240n l=20n nf=2 nfin=8
m25 vout vg vin avss nlvt w=480n l=20n nf=2 nfin=8
m26 vin vg net13 avss nlvt w=240n l=20n nf=2 nfin=8
m12 phie phieb avdd avdd plvt w=340n l=20n nf=2 nfin=8
m11 phieb net013 avdd avdd plvt w=340n l=20n nf=2 nfin=8
m8 net013 phi avdd avdd plvt w=340n l=20n nf=2 nfin=8
m1 vg net06 net8 avdd plvt w=240n l=20n nf=2 nfin=8
m4 net06 phieb avdd avdd plvt w=240n l=20n nf=2 nfin=8
m0 net8 vg avdd avdd plvt w=240n l=20n nf=2 nfin=8
c00 net8 net13 1e-12
c01 net8 net13 1e-12
.ends BSSW_WOTOD