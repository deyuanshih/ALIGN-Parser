** Library name: TO65_20200429
** Cell name: TIA_1
** View name: schematic
.subckt TIA_1 _net3 _net1 _net0 _net2 vdda vssa
m1 _net0 _net1 vssa vssa nlvt l=400e-9 w=64e-6 m=1 nf=4 nfin=2
m0 _net2 _net3 vssa vssa nlvt l=400e-9 w=64e-6 m=1 nf=4 nfin=2
m5 net13 _net0 vdda vdda pmos_rvt l=200e-9 w=32e-6 m=1 nf=4 nfin=2
m4 net13 _net2 vdda vdda pmos_rvt l=200e-9 w=32e-6 m=1 nf=4 nfin=2
m3 _net0 _net1 net13 vdda pmos_rvt l=200e-9 w=192e-6 m=1 nf=16 nfin=2
m2 _net2 _net3 net13 vdda pmos_rvt l=200e-9 w=192e-6 m=1 nf=16 nfin=2
.ends TIA_1
** End of subcircuit definition.


** Library name: TO65_20200429
** Cell name: bottom_plate_4path_beamforming
** View name: schematic
.subckt bottom_plate_4path_beamforming clk_x1 clk_x1_b clk_x2 clk_x2_b clk_x3 clk_x3_b clk_x4 clk_x4_b _net19 _net17 vcmbias vdda vssa _net11 _net6 _net10 _net4 _net9 _net2 _net8 _net0
m15 _net0 clk_x4 _net1 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m14 _net2 clk_x3 _net3 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m13 _net4 clk_x2 _net5 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m12 _net6 clk_x1 _net7 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m11 _net8 clk_x4_b _net1 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m10 _net9 clk_x3_b _net3 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m9 _net10 clk_x2_b _net5 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m8 _net11 clk_x1_b _net7 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m7 _net0 clk_x4_b _net12 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m6 _net2 clk_x3_b _net13 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m5 _net4 clk_x2_b _net14 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m4 _net6 clk_x1_b _net15 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m3 _net8 clk_x4 _net12 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m2 _net9 clk_x3 _net13 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m1 _net10 clk_x2 _net14 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
m0 _net11 clk_x1 _net15 vssa nmos_rvt l=60e-9 w=2e-6 nf=8 nfin=2
**Series configuration of R18
r18_1__dmy0  _net18 _net19  800
**End of R18

**Series configuration of R16
r16_1__dmy0  _net16  _net17  800
**End of R16
r11  _net1 _net18   140
r10  _net3 _net18   140
r9  _net5 _net18   140
r8  _net7 _net18   140
r3  _net12 _net16   140
r2  _net13 _net16   140
r1  _net14 _net16   140
r0  _net15 _net16   140

c8_1 _net16 _net17 1e-12
c8_2 _net16 _net17 1e-12
c9_1 _net18 _net19 1e-12
c9_2 _net18 _net19 1e-12
c4_1 _net7 vcmbias 1e-12
c4_2 _net7 vcmbias 1e-12
c5_1 _net5 vcmbias 1e-12
c5_2 _net5 vcmbias 1e-12
c7_1 _net1 vcmbias 1e-12
c7_2 _net1 vcmbias 1e-12
c6_1 _net3 vcmbias 1e-12
c6_2 _net3 vcmbias 1e-12
c2_1 _net13 vcmbias 1e-12
c2_2 _net13 vcmbias 1e-12
c3_1 _net12 vcmbias 1e-12
c3_2 _net12 vcmbias 1e-12
c1_1 _net15 vcmbias 1e-12
c1_2 _net15 vcmbias 1e-12
c0_1 _net14 vcmbias 1e-12
c0_2 _net14 vcmbias 1e-12
xi0 _net16 _net18 _net19 _net17 vdda vssa TIA_1
.ends bottom_plate_4path_beamforming
** End of subcircuit definition.