.subckt COMPARATOR_PRE_AMP CLK CROSSN CROSSP GND INTERN INTERP OUTM OUTP VDD VPLUS VMINUS
M0  GND INTERN GND GND nlvt w=0.2625u l=1u nf=2 nfin=2
M22  GND INTERP GND GND nlvt w=0.2625u l=1u nf=2 nfin=2
M16  OUTM CROSSP GND GND nlvt w=0.72u l=40n nf=2 nfin=3
M17  OUTP CROSSN GND GND nlvt w=0.72u l=40n nf=2 nfin=3
M4  CROSSN CROSSP INTERN GND nlvt w=0.96u l=40n nf=4 nfin=2
M3  CROSSP CROSSN INTERP GND nlvt w=0.96u l=40n nf=4 nfin=2
M7  net050 CLK GND GND nlvt w=4.32u l=40n nf=18 nfin=2
M5  INTERN VPLUS net050 GND nlvt w=4.8u l=40n nf=10 nfin=2
M6  INTERP VMINUS net050 GND nlvt w=4.8u l=40n nf=10 nfin=2
M8  OUTM CROSSP VDD VDD plvt w=1.44u l=40n nf=2 nfin=3
M18  INTERN CLK VDD VDD plvt w=0.96u l=40n nf=2 nfin=2
M15  OUTP CROSSN VDD VDD plvt w=1.44u l=40n nf=2 nfin=3
M19  INTERP CLK VDD VDD plvt w=0.96u l=40n nf=2 nfin=2
M10  CROSSN CLK VDD VDD plvt w=0.96u l=40n nf=2 nfin=2
M12  CROSSP CLK VDD VDD plvt w=0.96u l=40n nf=2 nfin=2
M14  CROSSN CROSSP VDD VDD plvt w=1.92u l=40n nf=4 nfin=2
M13  CROSSP CROSSN VDD VDD plvt w=1.92u l=40n nf=4 nfin=2
.ends COMPARATOR_PRE_AMP

