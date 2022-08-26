** Library name: TO65_20200429
** Cell name: bottom_plate_4path_mixer_diff_end
** View name: schematic
.subckt bottom_plate_4path_mixer_diff_end clk0 clk90 clk180 clk270 _net1 _net0 vcmbias vdda_q
c7_110 n5 _net0 1e-12
c7_120 n5 _net0 1e-12
c7_210 n5 _net0 1e-12
c7_220 n5 _net0 1e-12
c7_310 n5 _net0 1e-12
c7_320 n5 _net0 1e-12
c7_111 n5 _net0 1e-12
c7_121 n5 _net0 1e-12
c7_211 n5 _net0 1e-12
c7_221 n5 _net0 1e-12
c7_311 n5 _net0 1e-12
c7_321 n5 _net0 1e-12

c3_110 n1 _net1 1e-12
c3_120 n1 _net1 1e-12
c3_210 n1 _net1 1e-12
c3_220 n1 _net1 1e-12
c3_310 n1 _net1 1e-12
c3_320 n1 _net1 1e-12
c3_111 n1 _net1 1e-12
c3_121 n1 _net1 1e-12
c3_211 n1 _net1 1e-12
c3_221 n1 _net1 1e-12
c3_311 n1 _net1 1e-12
c3_321 n1 _net1 1e-12

c8_110 n6 _net0 1e-12
c8_120 n6 _net0 1e-12
c8_210 n6 _net0 1e-12
c8_220 n6 _net0 1e-12
c8_310 n6 _net0 1e-12
c8_320 n6 _net0 1e-12
c8_111 n6 _net0 1e-12
c8_121 n6 _net0 1e-12
c8_211 n6 _net0 1e-12
c8_221 n6 _net0 1e-12
c8_311 n6 _net0 1e-12
c8_321 n6 _net0 1e-12

c9_110 n7 _net0 1e-12
c9_120 n7 _net0 1e-12
c9_210 n7 _net0 1e-12
c9_220 n7 _net0 1e-12
c9_310 n7 _net0 1e-12
c9_320 n7 _net0 1e-12
c9_111 n7 _net0 1e-12
c9_121 n7 _net0 1e-12
c9_211 n7 _net0 1e-12
c9_221 n7 _net0 1e-12
c9_311 n7 _net0 1e-12
c9_321 n7 _net0 1e-12

c5_110 n3 _net1 1e-12
c5_120 n3 _net1 1e-12
c5_210 n3 _net1 1e-12
c5_220 n3 _net1 1e-12
c5_310 n3 _net1 1e-12
c5_320 n3 _net1 1e-12
c5_111 n3 _net1 1e-12
c5_121 n3 _net1 1e-12
c5_211 n3 _net1 1e-12
c5_221 n3 _net1 1e-12
c5_311 n3 _net1 1e-12
c5_321 n3 _net1 1e-12

c4_110 n2 _net1 1e-12
c4_120 n2 _net1 1e-12
c4_210 n2 _net1 1e-12
c4_220 n2 _net1 1e-12
c4_310 n2 _net1 1e-12
c4_320 n2 _net1 1e-12
c4_111 n2 _net1 1e-12
c4_121 n2 _net1 1e-12
c4_211 n2 _net1 1e-12
c4_221 n2 _net1 1e-12
c4_311 n2 _net1 1e-12
c4_321 n2 _net1 1e-12

c6_110 n4 _net1 1e-12
c6_120 n4 _net1 1e-12
c6_210 n4 _net1 1e-12
c6_220 n4 _net1 1e-12
c6_310 n4 _net1 1e-12
c6_320 n4 _net1 1e-12
c6_111 n4 _net1 1e-12
c6_121 n4 _net1 1e-12
c6_211 n4 _net1 1e-12
c6_221 n4 _net1 1e-12
c6_311 n4 _net1 1e-12
c6_321 n4 _net1 1e-12

c10_110 n8 _net0 1e-12
c10_120 n8 _net0 1e-12
c10_210 n8 _net0 1e-12
c10_220 n8 _net0 1e-12
c10_310 n8 _net0 1e-12
c10_320 n8 _net0 1e-12
c10_111 n8 _net0 1e-12
c10_121 n8 _net0 1e-12
c10_211 n8 _net0 1e-12
c10_221 n8 _net0 1e-12
c10_311 n8 _net0 1e-12
c10_321 n8 _net0 1e-12

m0 n1 clk0 n5 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m1 n2 clk90 n6 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m2 n3 clk180 n7 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m3 n4 clk270 n8 vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m4 n1 clk0 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m5 n2 clk90 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m6 n3 clk180 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m7 n4 clk270 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m8 n5 clk0 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m9 n6 clk90 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m10 n7 clk180 vcmbias vcmbias nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
m11 n8 clk270 vcmbias vdda_q nmos_rvt l=60e-9 w=4e-6 nf=32 nfin=8
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