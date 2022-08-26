
.subckt COMP_GM_STAGE_0415 CLK GND INM INP OUTM OUTP VCC_COMP
M96  net90 INM net070 net070 pfet w=25u l=500n nfin=2 nf=4
M95  net054 GND net054 net054 pfet w=225n l=300n nfin=2 nf=2
M94  OUTM net054 VCC_COMP VCC_COMP pfet w=480.0n l=40n nfin=2 nf=2
M93  net054 net030 net90 VCC_COMP pfet w=3.84u l=100n nfin=2 nf=8
M45  net070 net070 net070 net070 pfet w=5u l=500n nfin=2 nf=2
M86  VCC_COMP VCC_COMP VCC_COMP VCC_COMP pfet w=10u l=500n nfin=2 nf=4
M11  net019 INP net070 net070 pfet w=25u l=500n nfin=2 nf=4
M2  net030 net054 net019 VCC_COMP pfet w=3.84u l=100n nfin=2 nf=8
M6  OUTP net030 VCC_COMP VCC_COMP pfet w=480.0n l=40n nfin=2 nf=2
M13  net030 GND net030 net030 pfet w=225n l=300n nfin=2 nf=2
M90  net054 CLKB GND GND nfet w=60.0n l=40n nfin=2 nf=2
M89  OUTM net054 GND GND nfet w=240.0n l=40n nfin=2 nf=2
M88  net90 CLKB GND GND nfet w=60.0n l=40n nfin=2 nf=2
M87  net054 net030 GND GND nfet w=1.92u l=100n nfin=2 nf=8
M26  net019 CLKB GND GND nfet w=60.0n l=40n nfin=2 nf=2
M21  OUTP net030 GND GND nfet w=240.0n l=40n nfin=2 nf=2
M23  net030 CLKB GND GND nfet w=60.0n l=40n nfin=2 nf=2
M18  net030 net054 GND GND nfet w=1.92u l=100n nfin=2 nf=8
M52  net070 CLKB VCC_COMP VCC_COMP pfet w=0.5u l=40n nfin=2 nf=2
.ends