.subckt COMPARATOR CLK GND OUTM OUTP VDD VPLUS VMINUS
M0  GND INTERN GND GND nlvt w=0.2625u l=1u nf=2 nfin=4
M22  GND INTERP GND GND nlvt w=0.2625u l=1u nf=2 nfin=4
M16  OUTM CROSSP GND GND nlvt w=0.72u l=40n nf=4 nfin=4
M17  OUTP CROSSN GND GND nlvt w=0.72u l=40n nf=4 nfin=4
M4  CROSSN CROSSP INTERN GND nlvt w=0.96u l=40n nf=4 nfin=4
M3  CROSSP CROSSN INTERP GND nlvt w=0.96u l=40n nf=4 nfin=4
M7  net069 CLK GND GND nlvt w=1.84u l=40n nf=8 nfin=4
M5  INTERN VPLUS net069 GND nlvt w=3.84u l=40n nf=8 nfin=4
M6  INTERP VMINUS net069 GND nlvt w=3.84u l=40n nf=8 nfin=4
M8  OUTM CROSSP VDD VDD plvt w=0.96u l=40n nf=4 nfin=4
M18  INTERN CLK VDD VDD plvt w=480.0n l=40n nf=2 nfin=4
M15  OUTP CROSSN VDD VDD plvt w=0.96u l=40n nf=4 nfin=4
M2  INTERP CLK VDD VDD plvt w=480.0n l=40n nf=2 nfin=4
M1  CROSSN CLK VDD VDD plvt w=480.0n l=40n nf=2 nfin=4
M12  CROSSP CLK VDD VDD plvt w=480.0n l=40n nf=2 nfin=4
M14  CROSSN CROSSP VDD VDD plvt w=1.92u l=40n nf=8 nfin=4
M13  CROSSP CROSSN VDD VDD plvt w=1.92u l=40n nf=8 nfin=4
.ends COMPARATOR