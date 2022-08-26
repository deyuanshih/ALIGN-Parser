
** Library name: Tape_Jan20
** Cell name: INVx1_8Phase
** View name: schematic
.subckt INVx1_8Phase in out vdd vss
m1 out in vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=4 nfin=8
m0 out in vss vss nmos_rvt l=60e-9 w=600e-9 nf=4 nfin=8
.ends INVx1_8Phase
** End of subcircuit definition.

** Library name: TO65_20200429
** Cell name: CLK_IO
** View name: schematic
** Digital
.subckt CLK_IO inn inp outn outp vdd vss
c00 net3 inp 8e-13
c01 net3 inp 8e-13
c10 net2 inn 8e-13
c11 net2 inn 8e-13
**Series configuration of R2
r2_1__dmy0  bias xr2_1__dmy0  1600
r2_2__dmy0  xr2_1__dmy0 xr2_2__dmy0  1600
r2_3__dmy0  xr2_2__dmy0 xr2_3__dmy0  1600
r2_4__dmy0  xr2_3__dmy0 xr2_4__dmy0  1600
r2_5__dmy0  xr2_4__dmy0 xr2_5__dmy0  1600
r2_6__dmy0  xr2_5__dmy0 xr2_6__dmy0  1600
r2_7__dmy0  xr2_6__dmy0 xr2_7__dmy0  1600
r2_8__dmy0  xr2_7__dmy0 xr2_8__dmy0  1600
r2_9__dmy0  xr2_8__dmy0 xr2_9__dmy0  1600
r2_10__dmy0  xr2_9__dmy0 xr2_10__dmy0  1600
r2_11__dmy0  xr2_10__dmy0 xr2_11__dmy0  1600
r2_12__dmy0  xr2_11__dmy0 xr2_12__dmy0  1600
r2_13__dmy0  xr2_12__dmy0 xr2_13__dmy0  1600
r2_14__dmy0  xr2_13__dmy0 xr2_14__dmy0  1600
r2_15__dmy0  xr2_14__dmy0 xr2_15__dmy0  1600
r2_16__dmy0  xr2_15__dmy0 xr2_16__dmy0  1600
r2_17__dmy0  xr2_16__dmy0 xr2_17__dmy0  1600
r2_18__dmy0  xr2_17__dmy0 net3  1600
**End of R2

**Series configuration of R0
r0_1__dmy0  net2 xr0_1__dmy0  1600
r0_2__dmy0  xr0_1__dmy0 xr0_2__dmy0  1600
r0_3__dmy0  xr0_2__dmy0 xr0_3__dmy0  1600
r0_4__dmy0  xr0_3__dmy0 xr0_4__dmy0  1600
r0_5__dmy0  xr0_4__dmy0 xr0_5__dmy0  1600
r0_6__dmy0  xr0_5__dmy0 xr0_6__dmy0  1600
r0_7__dmy0  xr0_6__dmy0 xr0_7__dmy0  1600
r0_8__dmy0  xr0_7__dmy0 xr0_8__dmy0  1600
r0_9__dmy0  xr0_8__dmy0 xr0_9__dmy0  1600
r0_10__dmy0  xr0_9__dmy0 xr0_10__dmy0  1600
r0_11__dmy0  xr0_10__dmy0 xr0_11__dmy0  1600
r0_12__dmy0  xr0_11__dmy0 xr0_12__dmy0  1600
r0_13__dmy0  xr0_12__dmy0 xr0_13__dmy0  1600
r0_14__dmy0  xr0_13__dmy0 xr0_14__dmy0  1600
r0_15__dmy0  xr0_14__dmy0 xr0_15__dmy0  1600
r0_16__dmy0  xr0_15__dmy0 xr0_16__dmy0  1600
r0_17__dmy0  xr0_16__dmy0 xr0_17__dmy0  1600
r0_18__dmy0  xr0_17__dmy0 bias  1600
**End of R0

xi3 net1b outn vdd vss INVx1_8Phase
xi2 net1 outp vdd vss INVx1_8Phase
xi1 net2 net1b vdd vss INVx1_8Phase
xi0 net3 net1 vdd vss INVx1_8Phase
m6 net1 net1b vss vss nmos_rvt l=60e-9 w=150e-9 nf=4 nfin=8
m4 net1b net1 vss vss nmos_rvt l=60e-9 w=150e-9 nf=4 nfin=8
m0 bias bias net026 vss nmos_rvt l=60e-9 w=150e-9 nf=4 nfin=8
m2 net026 vdd vss vss nmos_rvt l=60e-9 w=150e-9 nf=4 nfin=8
m7 net1 net1b vdd vdd pmos_rvt l=60e-9 w=150e-9 nf=4 nfin=8
m5 net1b net1 vdd vdd pmos_rvt l=60e-9 w=150e-9 nf=4 nfin=8
m3 net011 vss vdd vdd pmos_rvt l=60e-9 w=3.75e-7 nf=4 nfin=8
m1 bias bias net011 vdd pmos_rvt l=60e-9 w=3.75e-7 nf=4 nfin=8
.ends CLK_IO
** End of subcircuit definition.