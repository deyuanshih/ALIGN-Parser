.subckt NOR gnd vdd vin1 vin2 vout
M0 vout vin1 gnd gnd nmos l=60n w=75.0n m=1 nfin=8
M1 vout vin2 gnd gnd nmos l=60n w=75.0n m=1 nfin=8
M3 vout vin1 net14 vdd pmos l=60n w=300n m=1 nfin=8
M2 net14 vin2 vdd vdd pmos l=60n w=300n m=1 nfin=8
.ends NOR

.subckt INV1x gnd vdd vin vout
M0 vout vin gnd gnd nmos l=60n w=60.0n m=1 nfin=8
M1 vout vin vdd vdd pmos l=60n w=120.0n m=1 nfin=8
.ends INV1x

.subckt INV_L2x gnd vdd vin vout
M0 vout vin gnd gnd nmos l=120.0n w=60.0n m=1 nfin=8
M1 vout vin vdd vdd pmos l=120.0n w=120.0n m=1 nfin=8
.ends INV_L2x

.subckt NAND gnd vdd vin1 vin2 vout
M2 vout vin1 net16 gnd nmos l=60n w=120.0n m=1 nfin=8
M3 net16 vin2 gnd gnd nmos l=60n w=120.0n m=1 nfin=8
M0 vout vin1 vdd vdd pmos l=60n w=120.0n m=1 nfin=8
M1 vout vin2 vdd vdd pmos l=60n w=120.0n m=1 nfin=8
.ends NAND


.subckt Sized_Non_overlapping_clock_generator CLK A B C D vdd gnd
xI36 gnd vdd net06 CLK A NOR
xI1  gnd vdd net011 net010 B NOR
xI37 gnd vdd CLK net010 INV1x
xI43 gnd vdd net010 net012 INV1x
xI39 gnd vdd net09 net011 INV_L2x
xI40 gnd vdd B net08 INV_L2x
xI41 gnd vdd net08 net06 INV_L2x
xI38 gnd vdd A net09 INV_L2x
xI44 gnd vdd D net010 C NAND
xI45 gnd vdd C net012 D NAND
.ends Sized_Non_overlapping_clock_generator
