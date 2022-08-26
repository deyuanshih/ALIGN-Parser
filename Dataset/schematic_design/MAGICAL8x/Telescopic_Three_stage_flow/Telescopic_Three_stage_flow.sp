.subckt Telescopic_Three_stage_flow INM INP OUTM OUTP VBN1 VDD VREF VSS
M60  net057 net056 net058 VSS nfet w=4.4u l=200n nf=8 nfin=8
M105  net058 VBN VSS VSS nfet w=44.0u l=400n nf=16 nfin=8
M93  VCMFB3 VREF net058 VSS nfet w=4.4u l=200n nf=8 nfin=8
M110  VOM2 VCMFB2 VSS VSS nfet w=10u l=400n nf=16 nfin=8
M75  VOP2 VCMFB2 VSS VSS nfet w=10u l=400n nf=16 nfin=8
M97  VBP VBN VSS VSS nfet w=22.0u l=400n nf=8 nfin=8
M24  VBN1 VBN1 VBN VSS nfet w=30u l=1u nf=20 nfin=8
M96  VBP1 VBN VSS VSS nfet w=22.0u l=400n nf=8 nfin=8
M21  VBN VBN VSS VSS nfet w=22.0u l=400n nf=8 nfin=8
M113  OUTP VOM2 VSS VSS nfet w=20u l=400n nf=32 nfin=8
M13  OUTM VOP2 VSS VSS nfet w=20u l=400n nf=32 nfin=8
M102  VOM2 VBN VSS VSS nfet w=22.0u l=400n nf=8 nfin=8
M18  VOP2 VBN VSS VSS nfet w=22.0u l=400n nf=8 nfin=8
M106  VOP1 VBN1 net2 VSS nfet w=30u l=200n nf=20 nfin=8
M4  net1 VBN VSS VSS nfet w=154.000000u l=400n nf=56 nfin=8
M3  VOM1 VBN1 net4 VSS nfet w=30u l=200n nf=20 nfin=8
M63  net057 net057 VDD VDD pfet w=5u l=200n nf=8 nfin=8
M112  OUTP VCMFB3 VDD VDD pfet w=200.0000u l=800n nf=80 nfin=8
M73  OUTM VCMFB3 VDD VDD pfet w=200.0000u l=800n nf=80 nfin=8
M114  VCMFB3 net057 VDD VDD pfet w=5u l=200n nf=8 nfin=8
M26  VBP1 VBP1 VDD VDD pfet w=25u l=1.6u nf=20 nfin=8
M90  VBP VBP VDD VDD pfet w=20u l=800n nf=8 nfin=8
M111  OUTP VBP VDD VDD pfet w=200.0000u l=800n nf=80 nfin=8
M14  OUTM VBP VDD VDD pfet w=200.0000u l=800n nf=80 nfin=8
M109  VOM2 VOP1 VDD VDD pfet w=400.0000u l=400n nf=160 nfin=8
M9  VOP2 VOM1 VDD VDD pfet w=400.0000u l=400n nf=160 nfin=8
M7  net07 VCMFB1 VDD VDD pfet w=20u l=800n nf=8 nfin=8
M6  VOM1 VBP1 net07 VDD pfet w=25u l=200n nf=20 nfin=8
M107  VOP1 VBP1 net08 VDD pfet w=25u l=200n nf=20 nfin=8
M108  net08 VCMFB1 VDD VDD pfet w=20u l=800n nf=8 nfin=8
C8  VOP1 OUTM capacitor w=140n l=140n
C10  VOM2 OUTM capacitor w=140n l=140n
C11  VOM2 OUTP capacitor w=140n l=140n
C9  VOM1 OUTP capacitor w=140n l=140n
R8  VCMFB2 VOM2 6400
R4_1_dmy0  VOP1 R4_1__dmy0 6400
R4_2_dmy0  R4_1__dmy0 R4_2__dmy0 6400
R4_3_dmy0  R4_2__dmy0 R4_3__dmy0 6400
R4_4_dmy0  R4_3__dmy0 R4_4__dmy0 6400
R4_5_dmy0  R4_4__dmy0 R4_5__dmy0 6400
R4_6_dmy0  R4_5__dmy0 R4_6__dmy0 6400
R4_7_dmy0  R4_6__dmy0 R4_7__dmy0 6400
R4_8_dmy0  R4_7__dmy0 R4_8__dmy0 6400
R4_9_dmy0  R4_8__dmy0 R4_9__dmy0 6400
R4_10_dmy0  R4_9__dmy0 VCMFB1 6400
R9  OUTP net056 5120
R6q_1_dmy0  VCMFB1 R6q_1__dmy0 6400
R6q_2_dmy0  R6q_1__dmy0 R6q_2__dmy0 6400
R6q_3_dmy0  R6q_2__dmy0 R6q_3__dmy0 6400
R6q_4_dmy0  R6q_3__dmy0 R6q_4__dmy0 6400
R6q_5_dmy0  R6q_4__dmy0 R6q_5__dmy0 6400
R6q_6_dmy0  R6q_5__dmy0 R6q_6__dmy0 6400
R6q_7_dmy0  R6q_6__dmy0 R6q_7__dmy0 6400
R6q_8_dmy0  R6q_7__dmy0 R6q_8__dmy0 6400
R6q_9_dmy0  R6q_8__dmy0 R6q_9__dmy0 6400
R6q_10_dmy0  R6q_9__dmy0 VOM1 6400
R10  net056 OUTM 5120
R7  VOP2 VCMFB2 6400
M2  net2 INM net1 VSS nfet w=45u l=800n nf=20 nfin=8
M12  net4 INP net1 VSS nfet w=45u l=800n nf=20 nfin=8
.ends Telescopic_Three_stage_flow