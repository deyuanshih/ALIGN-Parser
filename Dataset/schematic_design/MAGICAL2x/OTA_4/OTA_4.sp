
.subckt OTA_4 GND IBIAS VCM VDD VIM VIP VOM VOP
M36  net0134 PCAS VDD VDD phvt w=0.6u l=120.0n nf=2 nfin=4
C6  VOM vtail capacitor w=70n l=70n
C5  VOM net0101 capacitor w=70n l=70n
C7  vtail VOP capacitor w=70n l=70n
C0  net0118 VO1M capacitor w=70n l=70n
C1  VO1P net0118 capacitor w=70n l=70n
C3  VIM net096 capacitor w=70n l=70n
C2  VIP net092 capacitor w=70n l=70n
C4  net0101 VOP capacitor w=70n l=70n
M33  net0138 net077 VDD VDD pfet w=1.2u l=120.0n nf=4 nfin=4
M32  net0136 net077 VDD VDD pfet w=1.8u l=120.0n nf=6 nfin=4
M21  net0104 net0101 CMFBTAIL GND nlvt w=1.35u l=120.0n nf=6 nfin=4
M18  VO1P IBIAS net0131 GND nlvt w=29.7u l=240.0n nf=12 nfin=10
M17  VO1M IBIAS net0133 GND nlvt w=29.7u l=240.0n nf=12 nfin=10
M7  CMFBTAIL NBIAS_TAIL GND GND nlvt w=2.925u l=120.0n nf=4 nfin=12
M8  net0133 VIP NTAIL GND nlvt w=28.8u l=240.0n nf=32 nfin=4
M9  VOM net092 vs GND nlvt w=27.0u l=120.0n nf=30 nfin=4
M10  net0131 VIM NTAIL GND nlvt w=28.8u l=240.0n nf=32 nfin=4
M12  VOP net096 vs GND nlvt w=27.0u l=120.0n nf=30 nfin=4
M1  NTAIL NBIAS_TAIL GND GND nlvt w=2.925u l=120.0n nf=104 nfin=4
M2  VN1 NBIAS_TAIL GND GND nlvt w=2.925u l=120.0n nf=4 nfin=12
M4  VN2 NBIAS_TAIL GND GND nlvt w=2.925u l=120.0n nf=4 nfin=12
M3  net0135 NBIAS_TAIL GND GND nlvt w=1.125u l=120.0n nf=4 nfin=5
M13  net077 VCM net0135 GND nlvt w=1.125u l=120.0n nf=4 nfin=5
M14  INCM2 INCM2 net0137 GND nlvt w=0.3u l=240.0n nf=2 nfin=4
M15  NBIAS_TAIL VCM VN2 GND nlvt w=2.925u l=120.0n nf=4 nfin=12
M16  PCAS VCM VN1 GND nlvt w=2.925u l=120.0n nf=4 nfin=12
M20  vtail VCM CMFBTAIL GND nlvt w=1.35u l=120.0n nf=6 nfin=4
M19  IBIAS IBIAS NBIAS_TAIL GND nlvt w=2.475u l=120.0n nf=4 nfin=11
R11_1_dmy0  net0101 R11_1__dmy0 960
R11_2_dmy0  R11_1__dmy0 R11_2__dmy0 960
R11_3_dmy0  R11_2__dmy0 R11_3__dmy0 960
R11_4_dmy0  R11_3__dmy0 R11_4__dmy0 960
R11_5_dmy0  R11_4__dmy0 R11_5__dmy0 960
R11_6_dmy0  R11_5__dmy0 VOM 960
R5_1_dmy0  VO1M R5_1__dmy0 2400
R5_2_dmy0  R5_1__dmy0 R5_2__dmy0 2400
R5_3_dmy0  R5_2__dmy0 R5_3__dmy0 2400
R5_4_dmy0  R5_3__dmy0 R5_4__dmy0 2400
R5_5_dmy0  R5_4__dmy0 R5_5__dmy0 2400
R5_6_dmy0  R5_5__dmy0 R5_6__dmy0 2400
R5_7_dmy0  R5_6__dmy0 R5_7__dmy0 2400
R5_8_dmy0  R5_7__dmy0 R5_8__dmy0 2400
R5_9_dmy0  R5_8__dmy0 R5_9__dmy0 2400
R5_10_dmy0  R5_9__dmy0 R5_10__dmy0 2400
R5_11_dmy0  R5_10__dmy0 R5_11__dmy0 2400
R5_12_dmy0  R5_11__dmy0 R5_12__dmy0 2400
R5_13_dmy0  R5_12__dmy0 R5_13__dmy0 2400
R5_14_dmy0  R5_13__dmy0 R5_14__dmy0 2400
R5_15_dmy0  R5_14__dmy0 R5_15__dmy0 2400
R5_16_dmy0  R5_15__dmy0 R5_16__dmy0 2400
R5_17_dmy0  R5_16__dmy0 net0118 2400
R12_1_dmy0  net0118 R12_1__dmy0 2400
R12_2_dmy0  R12_1__dmy0 R12_2__dmy0 2400
R12_3_dmy0  R12_2__dmy0 R12_3__dmy0 2400
R12_4_dmy0  R12_3__dmy0 R12_4__dmy0 2400
R12_5_dmy0  R12_4__dmy0 R12_5__dmy0 2400
R12_6_dmy0  R12_5__dmy0 R12_6__dmy0 2400
R12_7_dmy0  R12_6__dmy0 R12_7__dmy0 2400
R12_8_dmy0  R12_7__dmy0 R12_8__dmy0 2400
R12_9_dmy0  R12_8__dmy0 R12_9__dmy0 2400
R12_10_dmy0  R12_9__dmy0 R12_10__dmy0 2400
R12_11_dmy0  R12_10__dmy0 R12_11__dmy0 2400
R12_12_dmy0  R12_11__dmy0 R12_12__dmy0 2400
R12_13_dmy0  R12_12__dmy0 R12_13__dmy0 2400
R12_14_dmy0  R12_13__dmy0 R12_14__dmy0 2400
R12_15_dmy0  R12_14__dmy0 R12_15__dmy0 2400
R12_16_dmy0  R12_15__dmy0 R12_16__dmy0 2400
R12_17_dmy0  R12_16__dmy0 VO1P 2400
R14_1_dmy0  VOP R14_1__dmy0 960
R14_2_dmy0  R14_1__dmy0 R14_2__dmy0 960
R14_3_dmy0  R14_2__dmy0 R14_3__dmy0 960
R14_4_dmy0  R14_3__dmy0 R14_4__dmy0 960
R14_5_dmy0  R14_4__dmy0 R14_5__dmy0 960
R14_6_dmy0  R14_5__dmy0 net0101 960
R13_1_dmy0  net096 R13_1__dmy0 800
R13_2_dmy0  R13_1__dmy0 R13_2__dmy0 800
R13_3_dmy0  R13_2__dmy0 R13_3__dmy0 800
R13_4_dmy0  R13_3__dmy0 R13_4__dmy0 800
R13_5_dmy0  R13_4__dmy0 R13_5__dmy0 800
R13_6_dmy0  R13_5__dmy0 R13_6__dmy0 800
R13_7_dmy0  R13_6__dmy0 R13_7__dmy0 800
R13_8_dmy0  R13_7__dmy0 R13_8__dmy0 800
R13_9_dmy0  R13_8__dmy0 R13_9__dmy0 800
R13_10_dmy0  R13_9__dmy0 R13_10__dmy0 800
R13_11_dmy0  R13_10__dmy0 R13_11__dmy0 800
R13_12_dmy0  R13_11__dmy0 INCM2 800
R0_1_dmy0  net092 R0_1__dmy0 800
R0_2_dmy0  R0_1__dmy0 R0_2__dmy0 800
R0_3_dmy0  R0_2__dmy0 R0_3__dmy0 800
R0_4_dmy0  R0_3__dmy0 R0_4__dmy0 800
R0_5_dmy0  R0_4__dmy0 R0_5__dmy0 800
R0_6_dmy0  R0_5__dmy0 R0_6__dmy0 800
R0_7_dmy0  R0_6__dmy0 R0_7__dmy0 800
R0_8_dmy0  R0_7__dmy0 R0_8__dmy0 800
R0_9_dmy0  R0_8__dmy0 R0_9__dmy0 800
R0_10_dmy0  R0_9__dmy0 R0_10__dmy0 800
R0_11_dmy0  R0_10__dmy0 R0_11__dmy0 800
R0_12_dmy0  R0_11__dmy0 INCM2 800
M74  PTAIL net0118 VDD VDD plvt w=12.0u l=120.0n nf=40 nfin=4
M71  VOP VO1M VDD VDD plvt w=12.0u l=120.0n nf=20 nfin=4
M70  VOM VO1P VDD VDD plvt w=12.0u l=120.0n nf=20 nfin=4
M69  net0104 net0104 VDD VDD plvt w=1.8u l=120.0n nf=6 nfin=4
M68  vtail net0104 VDD VDD plvt w=1.8u l=120.0n nf=6 nfin=4
M35  net0132 VIP PTAIL VDD plvt w=21.6u l=240.0n nf=24 nfin=4
M34  net0130 VIM PTAIL VDD plvt w=21.6u l=240.0n nf=24 nfin=4
M26  VO1M PCAS net0132 VDD plvt w=31.2u l=240.0n nf=26 nfin=4
M27  VO1P PCAS net0130 VDD plvt w=31.2u l=240.0n nf=26 nfin=4
M28  PCAS PCAS net0134 VDD plvt w=0.6u l=120.0n nf=2 nfin=4
M25  INCM2 PCAS net0138 VDD plvt w=1.2u l=120.0n nf=4 nfin=4
M24  net077 PCAS net0136 VDD plvt w=1.8u l=120.0n nf=6 nfin=4
M50  vs vtail GND GND nhvt w=36.u l=120.0n nf=40 nfin=4
M6  net0137 INCM2 GND GND nhvt w=0.3u l=240.0n nf=2 nfin=4
.ends OTA_4


