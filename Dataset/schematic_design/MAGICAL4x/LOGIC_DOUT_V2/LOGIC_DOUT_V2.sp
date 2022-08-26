.subckt INVX2 i vdd vss zn
xm1 zn i vss vss lvtnfet w=1.92u l=40n nf=2 nfin=8
xm0 zn i vdd vdd lvtpfet w=0.48u l=40n nf=2 nfin=8
.ends INVX2

.subckt INVX4 i vdd vss zn
xm1 zn i vss vss lvtnfet w=1.44u l=40n nf=2 nfin=8
xm0 zn i vdd vdd lvtpfet w=0.72u l=40n nf=2 nfin=8
.ends INVX4



.subckt DFF_TSPC_V2 clk d dvdd dvss q
xm20 net018 net09 dvss dvss lvtnfet w=1.92u l=40n nf=2 nfin=8
xm19 net012 clk net018 dvss lvtnfet w=1.92u l=40n nf=2 nfin=8
xm16 q net012 dvss dvss lvtnfet w=0.96u l=40n nf=2 nfin=8
xm0 net13 d dvss dvss lvtnfet w=0.96u l=40n nf=2 nfin=8
xm1 net019 clk dvss dvss lvtnfet w=1.92u l=40n nf=2 nfin=8
xm10 net09 net13 net019 dvss lvtnfet w=1.92u l=40n nf=2 nfin=8
xm17 q net012 dvdd dvdd lvtpfet w=1.92u l=40n nf=2 nfin=8
xm18 net012 net09 dvdd dvdd lvtpfet w=1.92u l=40n nf=2 nfin=8
xm4 net09 clk dvdd dvdd lvtpfet w=1.92u l=40n nf=2 nfin=8
xm5 net7 d dvdd dvdd lvtpfet w=1.92u l=40n nf=2 nfin=8
xm9 net13 clk net7 dvdd lvtpfet w=1.92u l=40n nf=2 nfin=8
.ends DFF_TSPC_V2

.subckt BUF22444 dvdd dvss in out outb outbb
xi0 net21 dvdd dvss net07 INVX2
xi184 in dvdd dvss net21 INVX2
xi187 outb dvdd dvss out INVX4
xi185 net07 dvdd dvss outb INVX4
xi186 out dvdd dvss outbb INVX4
.ends BUF22444

.subckt LOGIC_DOUT_V2 clk d<3> d<2> d<1> d<0> doe<3> doe<2> doe<1> doe<0> doeb<3> doeb<2> doeb<1> doeb<0> dout<3> dout<2> dout<1> dout<0> vdd vss
xi3 net10 vdd vss clkd INVX4
xi2 clk vdd vss net10 INVX2
xi1<3> clkd d<3> vdd vss dop<3> DFF_TSPC_V2
xi1<2> clkd d<2> vdd vss dop<2> DFF_TSPC_V2
xi1<1> clkd d<1> vdd vss dop<1> DFF_TSPC_V2
xi1<0> clkd d<0> vdd vss dop<0> DFF_TSPC_V2
xi18 vdd vss dop<3> doe<3> doeb<3> dout<3> BUF22444
xi36 vdd vss dop<0> doe<0> doeb<0> dout<0> BUF22444
xi35 vdd vss dop<1> doe<1> doeb<1> dout<1> BUF22444
xi34 vdd vss dop<2> doe<2> doeb<2> dout<2> BUF22444
.ends LOGIC_DOUT_V2