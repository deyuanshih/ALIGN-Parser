.subckt telescopic_ota vbiasn vbiasp1 vbiasp2 vinn vinp voutn voutp id vdd VSS
.param no_of_fin = 10
m1 id id VSS VSS nmos_rvt w=1080e-9 l=20e-9 nfin=8 nf=4
m2 net10 id VSS VSS nmos_rvt w=1080e-9 l=20e-9 nfin=8 nf=4
m5 voutn vbiasn net8 VSS nmos_rvt w=1080e-9 l=20e-9 nfin=5 nf=2
m6 voutp vbiasn net014 VSS nmos_rvt w=1080e-9 l=20e-9 nfin=5 nf=2
m8 voutp vbiasp1 net012 vdd pmos_rvt w=1080e-9 l=20e-9 nfin=8 nf=2
m7 voutn vbiasp1 net06 vdd pmos_rvt w=1080e-9 l=20e-9 nfin=8 nf=2
m10 net012 vbiasp2 vdd vdd pmos_rvt w=1080e-9 l=20e-9 nfin=8 nf=4
m9 net06 vbiasp2 vdd vdd pmos_rvt w=1080e-9 l=20e-9 nfin=8 nf=4
m4 net014 vinn net10 VSS nmos_rvt w=1080e-9 l=20e-9 nfin=12 nf=6
m3 net8 vinp net10 VSS nmos_rvt w=1080e-9 l=20e-9 nfin=12 nf=6
.ends ota
** End of subcircuit definition.
