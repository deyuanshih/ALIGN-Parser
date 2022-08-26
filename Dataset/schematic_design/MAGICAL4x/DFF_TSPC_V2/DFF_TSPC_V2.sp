.subckt DFF_TSPC_V2 clk d dvdd dvss q
m20 net018 net09 dvss dvss nlvt w=1.92u l=40n nf=2 nfin=8
m19 net012 clk net018 dvss nlvt w=1.92u l=40n nf=2 nfin=8
m16 q net012 dvss dvss nlvt w=0.96u l=40n nf=2 nfin=8
m0 net13 d dvss dvss nlvt w=0.96u l=40n nf=2 nfin=8
m1 net019 clk dvss dvss nlvt w=1.92u l=40n nf=2 nfin=8
m10 net09 net13 net019 dvss nlvt w=1.92u l=40n nf=2 nfin=8
m17 q net012 dvdd dvdd plvt w=1.92u l=40n nf=2 nfin=8
m18 net012 net09 dvdd dvdd plvt w=1.92u l=40n nf=2 nfin=8
m4 net09 clk dvdd dvdd plvt w=1.92u l=40n nf=2 nfin=8
m5 net7 d dvdd dvdd plvt w=1.92u l=40n nf=2 nfin=8
m9 net13 clk net7 dvdd plvt w=1.92u l=40n nf=2 nfin=8
.ends DFF_TSPC_V2