.subckt OTA_XT_MAGICAL GND NCAS VCM VDD VIM VIP VOM VOP
M29  VS net019 GND GND nhvt w=20.25u l=120.0n nf=20 nfin=6
M5  PCAS VCM BIAS2 GND nlvt w=2.4u l=120.0n nf=4 nfin=10
M30  TAIL1 NBIAS_TAIL GND GND nlvt w=2u l=120.0n nf=20 nfin=10
M53  VCMOP net0108 VS2 GND nlvt w=3.6u l=120.0n nf=16 nfin=4
M12  VCMON VCM VS2 GND nlvt w=3.6u l=120.0n nf=16 nfin=4
M50  VO1P NCAS CASN GND nlvt w=4.5u l=120.0n nf=20 nfin=4
M49  VO1M NCAS CASP GND nlvt w=4.5u l=120.0n nf=20 nfin=4
M51  NCAS NCAS NBIAS_TAIL GND nlvt w=2u l=120.0n nf=4 nfin=10
M47  NBIAS_TAIL VCM BIAS1 GND nlvt w=2.4u l=120.0n nf=4 nfin=10
M38  BIAS1 NBIAS_TAIL GND GND nlvt w=2u l=120.0n nf=4 nfin=10
M7  VOP VIM VS GND nlvt w=18.0u l=120.0n nf=20 nfin=6
M43  CASN VIM TAIL1 GND nlvt w=6.75u l=120.0n nf=4 nfin=10
M10  VOM VIP VS GND nlvt w=18.0u l=120.0n nf=20 nfin=6
M40  CASP VIP TAIL1 GND nlvt w=6.25u l=120.0n nf=4 nfin=10
M41  VS2 NBIAS_TAIL GND GND nlvt w=7.2u l=120.0n nf=20 nfin=4
M31  BIAS2 NBIAS_TAIL GND GND nlvt w=2u l=120.0n nf=4 nfin=10
C0  VO1P net096 capacitor w=140n l=140n
C1  VO1M net096 capacitor w=140n l=140n
C4  net019 VOP capacitor w=140n l=140n
C7  net0108 VOP capacitor w=140n l=140n
C3  net019 VOM capacitor w=140n l=140n
C6  net0108 VOM capacitor w=140n l=140n
R10_1__dmy0  net0108 R10_1_dmy0 2400
R10_2__dmy0  R10_1_dmy0 R10_2_dmy0 2400
R10_3__dmy0  R10_2_dmy0 R10_3_dmy0 2400
R10_4__dmy0  R10_3_dmy0 R10_4_dmy0 2400
R10_5__dmy0  R10_4_dmy0 R10_5_dmy0 2400
R10_6__dmy0  R10_5_dmy0 VOM  2400
R1_1__dmy0  VOP R1_1_dmy0  2400
R1_2__dmy0  R1_1_dmy0 R1_2_dmy0  2400
R1_3__dmy0  R1_2_dmy0 R1_3_dmy0  2400
R1_4__dmy0  R1_3_dmy0 R1_4_dmy0  2400
R1_5__dmy0  R1_4_dmy0 R1_5_dmy0  2400
R1_6__dmy0  R1_5_dmy0 net0108  2400
R8_1__dmy0  VO1M R8_1_dmy0 4800
R8_2__dmy0  R8_1_dmy0 R8_2_dmy0 4800
R8_3__dmy0  R8_2_dmy0 R8_3_dmy0 4800
R8_4__dmy0  R8_3_dmy0 R8_4_dmy0 4800
R8_5__dmy0  R8_4_dmy0 R8_5_dmy0 4800
R8_6__dmy0  R8_5_dmy0 R8_6_dmy0 4800
R8_7__dmy0  R8_6_dmy0 R8_7_dmy0 4800
R8_8__dmy0  R8_7_dmy0 R8_8_dmy0 4800
R8_9__dmy0  R8_8_dmy0 R8_9_dmy0 4800
R8_10__dmy0  R8_9_dmy0 net096 4800
R2_1__dmy0  net096 R2_1_dmy0 4800
R2_2__dmy0  R2_1_dmy0 R2_2_dmy0 4800
R2_3__dmy0  R2_2_dmy0 R2_3_dmy0 4800
R2_4__dmy0  R2_3_dmy0 R2_4_dmy0 4800
R2_5__dmy0  R2_4_dmy0 R2_5_dmy0 4800
R2_6__dmy0  R2_5_dmy0 R2_6_dmy0 4800
R2_7__dmy0  R2_6_dmy0 R2_7_dmy0 4800
R2_8__dmy0  R2_7_dmy0 R2_8_dmy0 4800
R2_9__dmy0  R2_8_dmy0 R2_9_dmy0 4800
R2_10__dmy0  R2_9_dmy0 VO1P 4800
M57  VO1P PCAS CAS2N VDD  plvt w=9.0u l=120.0n nf=20 nfin=4
M64  VCMON VCMOP VDD VDD  plvt w=4.8u l=120.0n nf=20 nfin=4
M67  VOM VO1P VDD VDD  plvt w=14.4u l=120.0n nf=40 nfin=4
M66  VCMOP VCMOP VDD VDD  plvt w=4.8u l=120.0n nf=20 nfin=4
M8  CAS2N net096 VDD VDD  plvt w=6.0u l=120.0n nf=20 nfin=4
M61  CAS2P net096 VDD VDD  plvt w=6.0u l=120.0n nf=20 nfin=4
M56  VO1M PCAS CAS2P VDD  plvt w=9.0u l=120.0n nf=20 nfin=4
M9  VOP VO1M VDD VDD  plvt w=14.4u l=120.0n nf=40 nfin=4
M58  PCAS PCAS net088 VDD  plvt w=3.2u l=120.0n nf=8 nfin=4
M63  net088 PCAS VDD VDD  phvt w=0.2675u l=120.0n nf=4 nfin=4
.ends OTA_XT_MAGICAL