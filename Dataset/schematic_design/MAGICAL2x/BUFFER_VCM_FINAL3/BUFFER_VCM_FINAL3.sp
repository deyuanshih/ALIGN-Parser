.subckt BUFFER_VCM_FINAL3 GND IBIAS VCM_IN VDD VOUT VFB
M22  net050 net050 GND GND nfet w=37.5n l=100n nf=2 nfin=4
M23  net053 net053 GND GND nfet w=37.5n l=100n nf=2 nfin=4
M24  net060 net053 GND GND nfet w=0.75u l=100n nf=10 nfin=4
M25  net061 net050 GND GND nfet w=0.75u l=100n nf=10 nfin=4
M26  VOUT net044 net060 GND nfet w=0.65u l=100n nf=2 nfin=4
M27  net047 net044 net061 GND nfet w=0.65u l=100n nf=2 nfin=4
M31  net044 net044 GND GND nfet w=37.5n l=350.0n nf=2 nfin=4
M3  net050 net050 net050 GND nfet w=150n l=100n nf=2 nfin=4
M11  net044 net044 net044 GND nfet w=150n l=350.0n nf=2 nfin=4
M4  net053 net053 net053 GND nfet w=150n l=100n nf=2 nfin=4
M7  VOUT VOUT VOUT GND nfet w=1.3u l=100n nf=4 nfin=4
M9  net061 net061 net061 GND nfet w=300n l=100n nf=4 nfin=4
M8  net047 net047 net047 GND nfet w=1.3u l=100n nf=4 nfin=4
M10  net060 net060 net060 GND nfet w=300n l=100n nf=4 nfin=4
M1  net052 net052 net052 VDD pfet w=1.65u l=100n nf=6 nfin=4
M2  net052 net052 net052 VDD pfet w=1.65u l=100n nf=6 nfin=4
M17  net052 IBIAS VDD VDD pfet w=1u l=100n nf=8 nfin=4
M18  net047 VCM_IN net052 VDD pfet w=0.55u l=100n nf=2 nfin=4
M19  net053 VCM_IN net052 VDD pfet w=0.55u l=100n nf=2 nfin=4
M20  VOUT VFB net052 VDD pfet w=0.55u l=100n nf=2 nfin=4
M21  net050 VFB net052 VDD pfet w=0.55u l=100n nf=2 nfin=4
M29  IBIAS IBIAS VDD VDD pfet w=250n l=100n nf=2 nfin=4
M30  net044 IBIAS VDD VDD pfet w=0.5u l=100n nf=4 nfin=4
M32  VOUT net047 VDD VDD pfet w=300n l=100n nf=2 nfin=4
M33  net047 net047 VDD VDD pfet w=300n l=100n nf=2 nfin=4
.ends BUFFER_VCM_FINAL3

