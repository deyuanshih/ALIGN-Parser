
.subckt INVD0BWP I ZN VDD VSS
MU1_2  ZN I VSS VSS nfet w=38.75n l=40n nf=8 nfin=8
MU1_3  ZN I VDD VDD pfet w=51.25n l=40n nf=8 nfin=8
.ends INVD0BWP

.subckt NR2D2BWP A1 A2 ZN VDD VSS
MI1_1_3  ZN A2 VSS VSS nfet w=77.5n l=40n nf=8 nfin=8
MI1_1_4  ZN A1 VSS VSS nfet w=77.5n l=40n nf=8 nfin=8
MI1_0_4  ZN A1 VSS VSS nfet w=77.5n l=40n nf=8 nfin=8
MI1_0_3  ZN A2 VSS VSS nfet w=77.5n l=40n nf=8 nfin=8
MI1_1_2  ZN A1 net17 VDD pfet w=102.5n l=40n nf=8 nfin=8
MI1_0_1  net25 A2 VDD VDD pfet w=102.5n l=40n nf=8 nfin=8
MI1_0_2  ZN A1 net25 VDD pfet w=102.5n l=40n nf=8 nfin=8
MI1_1_1  net17 A2 VDD VDD pfet w=102.5n l=40n nf=8 nfin=8
.ends NR2D2BWP


.subckt CLK_BOOST_COMP BYPASS CLK_BOOST CLK_IN GND VDD
M5  net8 net5 VDD VDD pfet w=480.0n l=40n nf=8 nfin=8
M4  CLK_BOOST net6 net8 VDD pfet w=480.0n l=40n nf=16 nfin=8
M1  net5 net6 net8 VDD pfet w=30n l=40n nf=8 nfin=8
M6  CLK_BOOST net6 CLK_IN GND nfet w=240.0n l=40n nf=16 nfin=8
M2  net5 net6 net013 GND nfet w=30n l=40n nf=8 nfin=8
I1  net6 BYPASS net013 VDD GND NR2D2BWP
I2  CLK_IN net6 VDD GND INVD0BWP
C2  net013 net8 capacitor w=280n l=280n
C3  net013 net8 capacitor w=280n l=280n
.ends CLK_BOOST_COMP