.subckt BUFFER_VCM_FINAL GND IBIAS VCM_IN VDD VOUT VFB
M2  net123 net123 GND GND nfet w=95.0n l=1u nf=2 nfin=2
M0  VOUT net132 GND GND nfet w=3.2u l=1u nf=2 nfin=2
M24  net065 net132 GND GND nfet w=3.2u l=1u nf=2 nfin=2
M25  net125 net132 GND GND nfet w=3.2u l=1u nf=2 nfin=2
M26  net138 net123 net065 GND nfet w=1.125u l=1u nf=2 nfin=2
M27  net128 net123 net125 GND nfet w=1.125u l=1u nf=2 nfin=2
M31  net132 net132 GND GND nfet w=0.8u l=1u nf=2 nfin=2
M6  net122 net132 GND GND nfet w=0.8u l=1u nf=2 nfin=2
M10  VOUT net065 VOUT VOUT pfet w=2u l=8u nf=2 nfin=2
M4  net138 net122 net137 net137 pfet w=4.75u l=1u nf=2 nfin=2
M5  net128 net122 net127 net127 pfet w=4.75u l=1u nf=2 nfin=2
M3  net123 IBIAS VDD VDD pfet w=2u l=1u nf=2 nfin=2
M1  VOUT net138 VDD VDD pfet w=12.5u l=1u nf=2 nfin=2
M17  net133 IBIAS VDD VDD pfet w=2u l=1u nf=2 nfin=2
M19  net065 VCM_IN net133 net133 pfet w=1.125u l=1u nf=2 nfin=2
M21  net125 VFB net133 net133 pfet w=1.125u l=1u nf=2 nfin=2
M29  IBIAS IBIAS VDD VDD pfet w=2u l=1u nf=2 nfin=2
M30  net132 IBIAS VDD VDD pfet w=2u l=1u nf=2 nfin=2
M32  net137 net128 VDD VDD pfet w=5u l=1u nf=2 nfin=2
M33  net127 net128 VDD VDD pfet w=5u l=1u nf=2 nfin=2
M7  net122 net122 VDD VDD pfet w=0.6u l=1u nf=2 nfin=2
.ends BUFFER_VCM_FINAL

