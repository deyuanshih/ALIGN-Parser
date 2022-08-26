.subckt Comparator_1to7_0p7_lvt CLK CLKE D D_B INM INP VDD VSS vout1m vout1p vout2m vout2p
M29  vout1p CLK VDD VDD plvt w=0.8u l=40n nf=8 nfin=8
M32  vout1m CLK VDD VDD plvt w=0.8u l=40n nf=8 nfin=8
M18  CLK net043 VDD VDD plvt w=1.6u l=40n nf=16 nfin=8
M19  net043 CLKE VDD VDD plvt w=400n l=40n nf=8 nfin=8
M7  D_B vout2p VDD VDD plvt w=150n l=40n nf=8 nfin=8
M28  vout2p vout2m VDD VDD plvt w=6.4u l=120.0n nf=32 nfin=8
M34  vout2m vout2p VDD VDD plvt w=6.4u l=120.0n nf=32 nfin=8
M25  vout2p CLK VDD VDD plvt w=400n l=40n nf=8 nfin=8
M8  D vout2m VDD VDD plvt w=150n l=40n nf=8 nfin=8
M33  vout2m CLK VDD VDD plvt w=400n l=40n nf=8 nfin=8
M35  net058 CLK VSS VSS nlvt w=0.25u l=40n nf=8 nfin=8
M10  vout1m INP net058 VSS nlvt w=0.3u l=200n nf=8 nfin=8
M9  D vout2m VSS VSS nlvt w=100n l=40n nf=8 nfin=8
M11  vout1p INM net058 VSS nlvt w=0.3u l=200n nf=8 nfin=8
M26  CLK net043 VSS VSS nlvt w=400n l=40n nf=8 nfin=8
M14  vout2p vout2m vout1p VSS nlvt w=3.2u l=120.0n nf=32 nfin=8
M12  vout1p INM net057 VSS nlvt w=0.3u l=200n nf=8 nfin=8
M40  net057 CLK VSS VSS nlvt w=0.25u l=40n nf=8 nfin=8
M6  D_B vout2p VSS VSS nlvt w=100n l=40n nf=8 nfin=8
M27  net043 CLKE VSS VSS nlvt w=200n l=40n nf=8 nfin=8
M13  vout1m INP net057 VSS nlvt w=0.3u l=200n nf=8 nfin=8
M21  vout2m vout2p vout1m VSS nlvt w=3.2u l=120.0n nf=32 nfin=8
.ends Comparator_1to7_0p7_lvt

