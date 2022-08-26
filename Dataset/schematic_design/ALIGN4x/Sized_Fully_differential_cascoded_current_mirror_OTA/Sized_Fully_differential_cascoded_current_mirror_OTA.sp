// Library name: DC_converter
// Cell name:
//2018_11_2_fully_diff_cascoded_current_mirror_ota_symbol_database
// View name: schematic

.subckt Sized_Fully_differential_cascoded_current_mirror_OTA id vinn vinp vbiasp vbiasn voutp voutn vdd vss
M15 net020 Vbiasp net021 net021 pmos l=130.0n w=1.5u m=1 nfin=8
M14 net010 Vbiasp net013 net013 pmos l=130.0n w=1.5u m=1 nfin=8
M5 Voutn Vbiasp net6 net6 pmos l=200n w=6.1525u m=1 nfin=8
M4 net6 net010 vdd vdd pmos l=200n w=5.385u m=1 nfin=8
M3 Voutp Vbiasp net23 net23 pmos l=200n w=6.1525u m=1 nfin=8
M2 net23 net020 vdd vdd pmos l=200n w=5.385u m=1 nfin=8
M1 net021 net020 vdd vdd pmos l=130.0n w=2.125u m=1 nfin=8
M0 net013 net010 vdd vdd pmos l=130.0n w=2.125u m=1 nfin=8
M13 id id vss vss  nmos l=130.0n w=1u m=1 nfin=8
M12 net17 id vss vss  nmos l=130.0n w=1u m=1 nfin=8
M11 Voutp Vbiasn net38 vss  nmos l=200n w=5.45u m=1 nfin=8
M10 net38 Vbiasnd vss vss  nmos l=300n w=5.75u m=1 nfin=8
M9 Voutn Vbiasn net39 vss  nmos l=200n w=5.45u m=1 nfin=8
M8 net39 Vbiasnd vss vss  nmos l=300n w=5.75u m=1 nfin=8
M7 net020 Vinp net17 vss  nmos l=130.0n w=1.78u m=1 nfin=8
M6 net010 Vinn net17 vss  nmos l=130.0n w=1.78u m=1 nfin=8

C1 Voutp Vbiasnd 40f
C0 Voutn Vbiasnd 40f

.ends