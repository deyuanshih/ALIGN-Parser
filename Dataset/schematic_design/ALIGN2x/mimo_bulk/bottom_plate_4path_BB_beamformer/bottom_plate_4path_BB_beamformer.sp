
** Library name: TO65_20200429
** Cell name: TIA_1
** View name: schematic
.subckt TIA_1 _net3 _net1 _net0 _net2 vdda vssa
m1 _net0 _net1 vssa vssa nlvt l=400e-9 w=64e-6 m=1 nf=4 nfin=2
m0 _net2 _net3 vssa vssa nlvt l=400e-9 w=64e-6 m=1 nf=4 nfin=2
m5 net13 _net0 vdda vdda pmos_rvt l=200e-9 w=32e-6 m=1 nf=4 nfin=2
m4 net13 _net2 vdda vdda pmos_rvt l=200e-9 w=32e-6 m=1 nf=4 nfin=2
m3 _net0 _net1 net13 net13 pmos_rvt l=200e-9 w=192e-6 m=1 nf=16 nfin=2
m2 _net2 _net3 net13 net13 pmos_rvt l=200e-9 w=192e-6 m=1 nf=16 nfin=2
.ends TIA_1
** End of subcircuit definition.


** Library name: TO65_20200429
** Cell name: bottom_plate_4path_beamforming
** View name: schematic
.subckt bottom_plate_4path_beamforming clk_x1 clk_x1_b clk_x2 clk_x2_b clk_x3 clk_x3_b clk_x4 clk_x4_b _net19 _net17 vcmbias vdda vssa _net11 _net6 _net10 _net4 _net9 _net2 _net8 _net0
m15 _net0 clk_x4 _net1 _net1 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m14 _net2 clk_x3 _net3 _net3 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m13 _net4 clk_x2 _net5 _net5 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m12 _net6 clk_x1 _net7 _net7 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m11 _net8 clk_x4_b _net1 _net1 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m10 _net9 clk_x3_b _net3 _net3 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m9 _net10 clk_x2_b _net5 _net5 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m8 _net11 clk_x1_b _net7 _net7 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m7 _net0 clk_x4_b _net12 _net12 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m6 _net2 clk_x3_b _net13 _net13 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m5 _net4 clk_x2_b _net14 _net14 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m4 _net6 clk_x1_b _net15 _net15 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m3 _net8 clk_x4 _net12 _net12 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m2 _net9 clk_x3 _net13 _net13 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m1 _net10 clk_x2 _net14 _net14 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
m0 _net11 clk_x1 _net15 _net15 nmos_rvt l=60e-9 w=2e-6 nf=8 nf=2
**Series configuration of R18
r18_1__dmy0  _net16 xr18_1__dmy0  100
r18_2__dmy0  xr18_1__dmy0 xr18_2__dmy0  100
r18_3__dmy0  xr18_2__dmy0 xr18_3__dmy0  100
r18_4__dmy0  xr18_3__dmy0 xr18_4__dmy0  100
r18_5__dmy0  xr18_4__dmy0 xr18_5__dmy0  100
r18_6__dmy0  xr18_5__dmy0 xr18_6__dmy0  100
r18_7__dmy0  xr18_6__dmy0 xr18_7__dmy0  100
r18_8__dmy0  xr18_7__dmy0 _net17  100
**End of R18

**Series configuration of R16
r16_1__dmy0  _net18 xr16_1__dmy0  100
r16_2__dmy0  xr16_1__dmy0 xr16_2__dmy0  100
r16_3__dmy0  xr16_2__dmy0 xr16_3__dmy0  100
r16_4__dmy0  xr16_3__dmy0 xr16_4__dmy0  100
r16_5__dmy0  xr16_4__dmy0 xr16_5__dmy0  100
r16_6__dmy0  xr16_5__dmy0 xr16_6__dmy0  100
r16_7__dmy0  xr16_6__dmy0 xr16_7__dmy0  100
r16_8__dmy0  xr16_7__dmy0 _net19  100
**End of R16
r11  _net1 _net18   140
r10  _net3 _net18   140
r9  _net5 _net18   140
r8  _net7 _net18   140
r3  _net12 _net16   140
r2  _net13 _net16   140
r1  _net14 _net16   140
r0  _net15 _net16   140

c8 _net16 _net17 2e-12
c9 _net18 _net19 2e-12
c4 _net7 vcmbias 2e-12
c5 _net5 vcmbias 2e-12
c7 _net1 vcmbias 2e-12
c6 _net3 vcmbias 2e-12
c2 _net13 vcmbias 2e-12
c3 _net12 vcmbias 2e-12
c1 _net15 vcmbias 2e-12
c0 _net14 vcmbias 2e-12
xi0 _net16 _net18 _net19 _net17 vdda vssa TIA_1
.ends bottom_plate_4path_beamforming
** End of subcircuit definition.

** Library name: TO65_20200429
** Cell name: bottom_plate_4path_BB_beamformer
** View name: schematic
.subckt bottom_plate_4path_BB_beamformer _net18 _net19 _net0 _net1 _net20 _net21 _net2 _net3 _net22 _net23 _net4 _net5 _net24 _net25 _net6 _net7 _net27 _net26 _net9 _net8 vcmbias _net10 _net11 _net12 _net13 _net14 _net15 _net16 _net17 vdda_bb vssa_bb
xi1 _net0 _net1 _net2 _net3 _net4 _net5 _net6 _net7 _net8 _net9 vcmbias vdda_bb vssa_bb _net10 _net11 _net12 _net13 _net14 _net15 _net16 _net17 bottom_plate_4path_beamforming
xi0 _net18 _net19 _net20 _net21 _net22 _net23 _net24 _net25 _net26 _net27 vcmbias vdda_bb vssa_bb _net10 _net11 _net12 _net13 _net14 _net15 _net16 _net17 bottom_plate_4path_beamforming
.ends bottom_plate_4path_BB_beamformer
** End of subcircuit definition.