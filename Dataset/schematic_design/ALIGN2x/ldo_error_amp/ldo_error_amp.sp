.subckt ldo_error_amp vbias_an vbias_bf vcc_nom vfb vg vref vss_x
mn56 vbias6 vbias_bf vss_x vss_x nmos nfin=6 nf=4
mn20 v5 v4 vss_x vss_x nmos nfin=6 nf=8
mn40 vss_x vbias_bf vss_x vss_x nmos nfin=6 nf=4
mn41 vbias4 vbias_an vss_x vss_x nmos nfin=6 nf=4
mn21 vbias2 vbias1 vbias3 vss_x nmos nfin=6 nf=4
mn37 v6 v4 vss_x vss_x nmos nfin=6 nf=8
mn22 v1 vref vcom1 vss_x nmos nfin=6 nf=20
mn23 v2 vfb vcom1 vss_x nmos nfin=6 nf=20
mn38 v4 vbias3 v6 vss_x nmos nfin=6 nf=8
mn39 v3 vbias3 v5 vss_x nmos nfin=6 nf=8
mn55 v3_d vbias_bf vss_x vss_x nmos nfin=6 nf=8
mn3 vss_x vbias_an vss_x vss_x nmos nfin=6 nf=4
mn2 vcom1 vbias_an vss_x vss_x nmos nfin=6 nf=8
mmp5 vg vg vcc_nom vcc_nom pmos nfin=6 nf=4
mmp29 v4 vbias2 v2 vcc_nom pmos nfin=6 nf=12
mmp30 v3 vbias2 v1 vcc_nom pmos nfin=6 nf=12
mmp33 vbias2 vbias2 vbias1 vcc_nom pmos nfin=6 nf=32
mmp1 v3_d v3 vg vcc_nom pmos nfin=6 nf=8
mp41 vbias6 vbias6 vcc_nom vcc_nom pmos nfin=6 nf=4
mp4 vg vbias6 vcc_nom vcc_nom pmos nfin=6 nf=8
mp22 v1 vbias1 vcc_nom vcc_nom pmos nfin=6 nf=12
mp34 vbias1 vbias1 vcc_nom vcc_nom pmos nfin=6 nf=4
mp28 v2 vbias1 vcc_nom vcc_nom pmos nfin=6 nf=12
mmn322 vg v3_d vss_x vss_x nmos nfin=6 nf=4
mmn42 vbias3 vbias3 vbias4 vss_x nmos nfin=6 nf=16
.ends

