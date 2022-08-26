.subckt five_transistor_ota_Bulk vbias vss vdd von vin vip
mn1 tail vbias vss vss n w=1600e-9 l=60e-9 nf=8 nfin=12 m=2
mn2 von vin tail vss n w=1600e-9 l=60e-9 nf=8 nfin=8 m=2
mn3 vop vip tail vss n w=1600e-9 l=60e-9 nf=8 nfin=8 m=2
mp4 von vop vdd vdd p w=1600e-9 l=60e-9 nf=8 nfin=4
mp5 vop vop vdd vdd p w=1600e-9 l=60e-9 nf=8 nfin=4
.ends five_transistor_ota
