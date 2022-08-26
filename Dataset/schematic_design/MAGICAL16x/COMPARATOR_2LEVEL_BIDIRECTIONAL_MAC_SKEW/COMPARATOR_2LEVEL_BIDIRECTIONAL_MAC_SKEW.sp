
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

.subckt COMPARATOR_2LEVEL_BIDIRECTIONAL_MAC_SKEW CLK FINE GND OUTM OUTP VDD VPULUS VMINUS
I3  GND FINE_BOOST FINE GND VDD CLK_BOOST_COMP
I0  CLK CLKB VDD GND INVD0BWP
M0  GND net066 GND GND nfet w=0.5u l=1u nf=8 nfin=8
M1  GND net065 GND GND nfet w=0.5u l=1u nf=8 nfin=8
M56  GND GND GND GND nlvt w=30.0n l=40n nf=8 nfin=8
M52  GND GND GND GND nlvt w=30.0n l=40n nf=8 nfin=8
M51  GND GND GND GND nlvt w=30.0n l=40n nf=8 nfin=8
M50  GND GND GND GND nlvt w=30.0n l=40n nf=8 nfin=8
M12  VXN FINE_BOOST net065 GND nlvt w=120.0n l=40n nf=8 nfin=8
M10  VXP FINE_BOOST net066 GND nlvt w=120.0n l=40n nf=8 nfin=8
M31  FLIPB FLIP GND GND nlvt w=30.0n l=40n nf=8 nfin=8
M16  OUTM INTERN GND GND nlvt w=480.0n l=40n nf=16 nfin=8
M21  FLIP CLKB GND GND nlvt w=30.0n l=40n nf=8 nfin=8
M15  net05 CLKN GND GND nlvt w=240.0n l=40n nf=16 nfin=8
M14  VXN VPULUS net05 GND nlvt w=0.96u l=40n nf=64 nfin=8
M32  CLKN FLIP GND GND nlvt w=30.0n l=40n nf=8 nfin=8
M37  VXN2 FLIPB GND GND nlvt w=30.0n l=40n nf=8 nfin=8
M13  VXP VMINUS net05 GND nlvt w=0.96u l=40n nf=64 nfin=8
M38  VMIDB VXN2 GND GND nlvt w=60.0n l=40n nf=8 nfin=8
M43  INTERN INTERP VMIDB GND nlvt w=240.0n l=40n nf=8 nfin=8
M41  VXP2 FLIPB GND GND nlvt w=30.0n l=40n nf=8 nfin=8
M42  INTERP INTERN VMID GND nlvt w=240.0n l=40n nf=8 nfin=8
M39  VMID VXP2 GND GND nlvt w=60.0n l=40n nf=8 nfin=8
M33  CLK FLIPB CLKN GND nlvt w=30.0n l=40n nf=8 nfin=8
M6  OUTP INTERP GND GND nlvt w=480.0n l=40n nf=16 nfin=8
M62  VDD CLK VXP VDD plvt w=30.0n l=40n nf=8 nfin=8
M61  VDD CLK VXN VDD plvt w=30.0n l=40n nf=8 nfin=8
M58  GND GND GND VDD plvt w=30.0n l=40n nf=8 nfin=8
M57  GND GND GND VDD plvt w=120.0n l=40n nf=8 nfin=8
M55  GND GND GND VDD plvt w=30.0n l=40n nf=8 nfin=8
M54  GND GND GND VDD plvt w=240.0n l=40n nf=16 nfin=8
M53  GND GND GND VDD plvt w=240.0n l=40n nf=16 nfin=8
M17  VXP VMINUS net04 VDD plvt w=0.96u l=40n nf=64 nfin=8
M30  FLIPB CLK VDD VDD plvt w=30.0n l=40n nf=8 nfin=8
M28  FLIP VXN net027 VDD plvt w=240.0n l=40n nf=16 nfin=8
M20  net027 CLKB VDD VDD plvt w=120.0n l=40n nf=8 nfin=8
M2  OUTM INTERN VDD VDD plvt w=120.0n l=40n nf=8 nfin=8
M29  FLIP VXP net027 VDD plvt w=240.0n l=40n nf=16 nfin=8
M36  VXN2 FLIPB VXN VDD plvt w=60.0n l=40n nf=8 nfin=8
M19  net04 FLIPB VDD VDD plvt w=480.0n l=40n nf=32 nfin=8
M18  VXN VPULUS net04 VDD plvt w=0.96u l=40n nf=64 nfin=8
M34  CLK FLIP CLKN VDD plvt w=30.0n l=40n nf=8 nfin=8
M40  VXP2 FLIPB VXP VDD plvt w=60.0n l=40n nf=8 nfin=8
M47  INTERN VXN2 VDD VDD plvt w=30.0n l=40n nf=8 nfin=8
M48  INTERN INTERP VDD VDD plvt w=60.0n l=40n nf=8 nfin=8
M45  VMIDB VXN2 VDD VDD plvt w=30.0n l=40n nf=8 nfin=8
M49  INTERP INTERN VDD VDD plvt w=60.0n l=40n nf=8 nfin=8
M44  VMID VXP2 VDD VDD plvt w=30.0n l=40n nf=8 nfin=8
M9  OUTP INTERP VDD VDD plvt w=120.0n l=40n nf=8 nfin=8
M46  INTERP VXP2 VDD VDD plvt w=30.0n l=40n nf=8 nfin=8
.ends COMPARATOR_2LEVEL_BIDIRECTIONAL_MAC_SKEW

