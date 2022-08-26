** Library name: TO65_20200429
** Cell name: bottom_plate_4path_mixer_diff_end
** View name: schematic
.subckt bottom_plate_4path_mixer_diff_end clk0 clk90 clk180 clk270 _net1 _net0 vcmbias vdda_q
c7_1 n5 _net0 1e-12
c7_2 n5 _net0 1e-12
c7_3 n5 _net0 1e-12
c3_1 n1 _net1 1e-12
c3_2 n1 _net1 1e-12
c3_3 n1 _net1 1e-12
c8_1 n6 _net0 1e-12
c8_2 n6 _net0 1e-12
c8_3 n6 _net0 1e-12
c9_1 n7 _net0 1e-12
c9_2 n7 _net0 1e-12
c9_3 n7 _net0 1e-12
c5_1 n3 _net1 1e-12
c5_2 n3 _net1 1e-12
c5_3 n3 _net1 1e-12
c4_1 n2 _net1 1e-12
c4_2 n2 _net1 1e-12
c4_3 n2 _net1 1e-12
c6_1 n4 _net1 1e-12
c6_2 n4 _net1 1e-12
c6_3 n4 _net1 1e-12
c10_1 n8 _net0 1e-12
c10_2 n8 _net0 1e-12
c10_3 n8 _net0 1e-12
m0 n1 clk0 n5 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m1 n2 clk90 n6 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m2 n3 clk180 n7 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m3 n4 clk270 n8 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m4 n1 clk0 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m5 n2 clk90 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m6 n3 clk180 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m7 n4 clk270 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m8 n5 clk0 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m9 n6 clk90 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m10 n7 clk180 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
m11 n8 clk270 vcmbias vdda_q nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=2
** vdda_q was floating add to one port @jitesh to fix it
.ends bottom_plate_4path_mixer_diff_end
** End of subcircuit definition.