
** Library name: TO65_20200429
** Cell name: INVx4_8Phase
** View name: schematic
.subckt INVx4_8Phase in out vdd vss
m1 out in vdd vdd pmos_rvt l=60e-9 w=1.2e-6 nf=8 nfin=8
m0 out in vss vss nmos_rvt l=60e-9 w=600e-9 nf=8 nfin=8
.ends INVx4_8Phase
** End of subcircuit definition.


** Library name: TO65_20200429
** Cell name: CLK_BUFFER_4X
** View name: schematic
** Digital
.subckt CLK_BUFFER_4X in out vdd vss
xi0<0> in net2 vdd vss INVx4_8Phase
xi0<1> in net2 vdd vss INVx4_8Phase
xi0<2> in net2 vdd vss INVx4_8Phase
xi0<3> in net2 vdd vss INVx4_8Phase
xi1<0> net2 out vdd vss INVx4_8Phase
xi1<1> net2 out vdd vss INVx4_8Phase
xi1<2> net2 out vdd vss INVx4_8Phase
xi1<3> net2 out vdd vss INVx4_8Phase
.ends CLK_BUFFER_4X
** End of subcircuit definition.