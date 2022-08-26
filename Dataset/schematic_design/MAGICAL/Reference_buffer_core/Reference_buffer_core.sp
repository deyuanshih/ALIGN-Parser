.subckt Reference_OTA GND VBIAS VDD VMIR VOUT VREF_IN
M0  VOUT net8 VDD VDD plvt w=1u l=300n nf=2 nfin=2
M5  net8 net8 VDD VDD plvt w=1u l=300n nf=2 nfin=2
M9  net012 net012 net012 GND nlvt w=2u l=200n nf=4 nfin=2
M8  net7 net7 net7 GND nlvt w=4u l=200n nf=8 nfin=2
M7  net7 VBIAS net012 GND nlvt w=1u l=200n nf=2 nfin=2
M62  net012 VDD GND GND nlvt w=300n l=40n nf=2 nfin=2
M1  net8 VMIR net7 GND nlvt w=2u l=200n nf=4 nfin=2
M4  VOUT VREF_IN net7 GND nlvt w=2u l=200n nf=4 nfin=2
.ends Reference_OTA

.subckt Reference_buffer_core GND VBIAS VBIASP VBIASP2 VDD VFB_2 VFB_IN VREF VREF_IN
M97  net017 net017 net017 GND nlvt w=150n l=40n nf=2 nfin=2
M104  net034 GND VBIASP GND nlvt w=0.125u l=200n nf=2 nfin=2
M102  net036 net036 net036 GND nlvt w=1u l=200n nf=4 nfin=2
M100  net017 net017 net017 GND nlvt w=0.5u l=200n nf=2 nfin=2
M62  net034 VDD GND GND nlvt w=0.3u l=40n nf=4 nfin=2
M98  net034 net034 net034 GND nlvt w=0.5u l=200n nf=2 nfin=2
M19  net017 VDD GND GND nlvt w=37.5n l=40n nf=2 nfin=2
M17  net036 VDD GND GND nlvt w=0.3u l=40n nf=4 nfin=2
M64  VFB_2 VBIAS net036 GND nlvt w=1u l=200n nf=4 nfin=2
M66  VBIAS VBIAS net034 GND nlvt w=1u l=200n nf=4 nfin=2
M7  VBIASP VBIAS net017 GND nlvt w=0.125u l=200n nf=2 nfin=2
M115  net022 VDD VDD VDD plvt w=93.75n l=40n nf=2 nfin=2
M114  net029 net029 net029 VDD plvt w=2.5u l=80n nf=4 nfin=2
M113  VREF VREF VREF VDD plvt w=3.0u l=40n nf=4 nfin=2
M117  VDD VDD net061 VDD plvt w=0.3125u l=80n nf=2 nfin=2
M112  net061 net061 net061 VDD plvt w=1.5u l=40n nf=2 nfin=2
M110  net022 VDD VDD VDD plvt w=0.3125u l=80n nf=2 nfin=2
M18  net022 GND VDD VDD plvt w=93.75n l=40n nf=2 nfin=2
M16  net029 GND VDD VDD plvt w=0.75u l=40n nf=4 nfin=2
M118  VDD VBIASP VDD VDD plvt w=1.25u l=5u nf=2 nfin=2
M99  net061 net018 net022 VDD plvt w=0.3125u l=80n nf=2 nfin=2
M77  VBIASP VBIASP net061 VDD plvt w=0.375u l=40n nf=2 nfin=2
M105  VDD net061 VDD VDD plvt w=1.25u l=5u nf=2 nfin=2
M9  VREF VBIASP2 net029 VDD plvt w=2.5u l=80n nf=4 nfin=2
M0  VFB_2 VBIASP VREF VDD plvt w=3.0u l=40n nf=4 nfin=2
M116  VDD VDD VBIASP VDD plvt w=0.375u l=40n nf=2 nfin=2
I12  GND VBIAS VDD VFB_IN net018 VREF_IN Reference_OTA
.ends Reference_buffer_core

