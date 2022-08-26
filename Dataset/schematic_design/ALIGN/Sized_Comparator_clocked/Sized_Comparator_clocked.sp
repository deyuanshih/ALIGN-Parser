
.subckt NOR GND VDD VIN1 VIN2 VOUT
    M0 VOUT VIN1 GND GND nmos l=60n w=75.0n m=1 nfin=2
    M1 VOUT VIN2 GND GND nmos l=60n w=75.0n m=1 nfin=2
    M3 VOUT VIN1 net14 VDD pmos l=60n w=300n m=1 nfin=2
    M2 net14 VIN2 VDD VDD pmos l=60n w=300n m=1 nfin=2
.ends NOR

.subckt Sized_Comparator_clocked CLK VINP VINN Q QB GND VDD
M2 OUT OUTP net021 VDD pmos l=60n w=1.5u m=1 nfin=2
M4 OUTP OUT net020 VDD pmos l=60n w=1.5u m=1 nfin=2
M3 net023 CLK VDD VDD pmos l=60n w=150n m=1 nfin=2
I1 GND VDD OUT Q QB NOR
I0 GND VDD OUTP QB Q NOR
M0 net020 VINP net023 VDD pmos l=20u w=200n m=1 nfin=2
M1 net021 VINN net023 VDD pmos l=20u w=200n m=1 nfin=2
M12 net021 CLK GND GND nmos l=60n w=60.0n m=1 nfin=2
M11 net020 CLK GND GND nmos l=60n w=60.0n m=1 nfin=2
M10 net020 CLK net021 GND nmos l=60n w=60.0n m=1 nfin=2
M9 OUT CLK GND GND nmos l=60n w=100n m=1 nfin=2
M6 OUT OUTP GND GND nmos l=60n w=100n m=1 nfin=2
M7 OUTP OUT GND GND nmos l=60n w=100n m=1 nfin=2
M8 OUTP CLK GND GND nmos l=60n w=100n m=1 nfin=2

.ends Sized_Comparator_clocked