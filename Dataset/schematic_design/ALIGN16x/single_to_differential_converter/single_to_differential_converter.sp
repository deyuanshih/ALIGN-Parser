
.param nfpf=30 ngf=1 rbias=20k rload=900 \
	vbias=600m vps=0.85

.subckt nfet2x d g s b
.param p1=30
    MN0 d g n1 b    nfet l=0.014u nfin=p1 nf=32
    MN1 n1 g s b    nfet l=0.014u nfin=p1 nf=32
.ends nfet2x

.subckt single_to_differential_converter vb vin vout_sdc1 vout_sdc2 vps vgnd
.param fin_count=12 rb=160k rl=7200 cc=19600n cl=9800n

	xI0 vd net1 vs vgnd nfet2x p1=fin_count
	R2 vb net1 resistor r=rb
	R1 vs vgnd resistor r=rl
	R0 vps vd resistor r=rl
	C2 vs vout_sdc2 capacitor W=cl L=9800n
	C1 vd vout_sdc1 capacitor W=cl L=9800n
	C0 vin net1 capacitor W=cc L=9800n
.ends single_to_differential_converter
