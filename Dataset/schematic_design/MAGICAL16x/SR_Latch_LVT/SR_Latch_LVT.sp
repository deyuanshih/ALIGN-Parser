.subckt NR2D8BWP_LVT A1 A2 ZN VDD VSS
MI1_1  net13 A2 VDD VDD plvt w=0.82u l=40n nf=8 nfin=8
MI1_2  ZN A1 net13 VDD plvt w=0.82u l=40n nf=8 nfin=8
MI1_3  ZN A2 VSS VSS nlvt w=0.62u l=40n nf=8 nfin=8
MI1_4  ZN A1 VSS VSS nlvt w=0.62u l=40n nf=8 nfin=8
.ends NR2D8BWP_LVT

.subckt SR_Latch_LVT Q QB R S VDD VSS
I1  R QB Q VDD VSS NR2D8BWP_LVT
I0  S Q QB VDD VSS NR2D8BWP_LVT
.ends SR_Latch_LVT