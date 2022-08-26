** Library name: TO65_20200429
** Cell name: bottom_plate_4path_mixer_diff_end
** View name: schematic
.subckt bottom_plate_4path_mixer_diff_end clk0 clk90 clk180 clk270 _net1 _net0 vcmbias vdda_q
c7_11 n5 _net0 1e-12
c7_12 n5 _net0 1e-12
c7_21 n5 _net0 1e-12
c7_22 n5 _net0 1e-12
c7_31 n5 _net0 1e-12
c7_32 n5 _net0 1e-12
c3_11 n1 _net1 1e-12
c3_12 n1 _net1 1e-12
c3_21 n1 _net1 1e-12
c3_22 n1 _net1 1e-12
c3_31 n1 _net1 1e-12
c3_32 n1 _net1 1e-12
c8_11 n6 _net0 1e-12
c8_12 n6 _net0 1e-12
c8_21 n6 _net0 1e-12
c8_22 n6 _net0 1e-12
c8_31 n6 _net0 1e-12
c8_32 n6 _net0 1e-12
c9_11 n7 _net0 1e-12
c9_12 n7 _net0 1e-12
c9_21 n7 _net0 1e-12
c9_22 n7 _net0 1e-12
c9_31 n7 _net0 1e-12
c9_32 n7 _net0 1e-12
c5_11 n3 _net1 1e-12
c5_12 n3 _net1 1e-12
c5_21 n3 _net1 1e-12
c5_22 n3 _net1 1e-12
c5_31 n3 _net1 1e-12
c5_32 n3 _net1 1e-12
c4_11 n2 _net1 1e-12
c4_12 n2 _net1 1e-12
c4_21 n2 _net1 1e-12
c4_22 n2 _net1 1e-12
c4_31 n2 _net1 1e-12
c4_32 n2 _net1 1e-12
c6_11 n4 _net1 1e-12
c6_12 n4 _net1 1e-12
c6_21 n4 _net1 1e-12
c6_22 n4 _net1 1e-12
c6_31 n4 _net1 1e-12
c6_32 n4 _net1 1e-12
c10_11 n8 _net0 1e-12
c10_12 n8 _net0 1e-12
c10_21 n8 _net0 1e-12
c10_22 n8 _net0 1e-12
c10_31 n8 _net0 1e-12
c10_32 n8 _net0 1e-12
m0 n1 clk0 n5 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m1 n2 clk90 n6 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m2 n3 clk180 n7 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m3 n4 clk270 n8 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m4 n1 clk0 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m5 n2 clk90 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m6 n3 clk180 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m7 n4 clk270 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m8 n5 clk0 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m9 n6 clk90 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m10 n7 clk180 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
m11 n8 clk270 vcmbias vdda_q nmos_rvt l=60e-9 w=4e-6 nf=8 nfin=8
** vdda_q was floating add to one port @jitesh to fix it
.ends bottom_plate_4path_mixer_diff_end
** End of subcircuit definition.

** Library name: TO65_20200429
** Cell name: MIMO_mixers_bottom_plate
** View name: schematic
.subckt MIMO_mixers_bottom_plate clk0 clk180 clk270 clk90 vcmbias vdda_q _net0 _net1 _net2 _net3 _net4 _net5 _net6 _net7
xi0 clk0 clk90 clk180 clk270 _net0 _net1 vcmbias vdda_q bottom_plate_4path_mixer_diff_end
xi1 clk0 clk90 clk180 clk270 _net2 _net3 vcmbias vdda_q bottom_plate_4path_mixer_diff_end
xi2 clk0 clk90 clk180 clk270 _net4 _net5 vcmbias vdda_q bottom_plate_4path_mixer_diff_end
xi3 clk0 clk90 clk180 clk270 _net6 _net7 vcmbias vdda_q bottom_plate_4path_mixer_diff_end
.ends MIMO_mixers_bottom_plate
** End of subcircuit definition.