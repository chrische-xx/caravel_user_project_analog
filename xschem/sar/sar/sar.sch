v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {Xuut dclk drstn den dcomp dcal dvalid dres0 dres1 dres2 dres3 dres4 dres5 dres6 dres7 dsamp dctlp0 dctlp1 dctlp2 dctlp3 dctlp4 dctlp5 dctlp6 dctlp7 dctln0 dctln1 dctln2 dctln3 dctln4 dctln5 dctln6 dctln7 dtrim0 dtrim1 dtrim2 dtrim3 dtrim4 dtrimb0 dtrimb1 dtrimb2 dtrimb3 dtrimb4 dclkc sar_logic

.model adc_buff adc_bridge(in_low = 0.2 in_high=0.8)
.model dac_buff dac_bridge(out_high = 1.2)

Aad [clk rstn en comp cal] [dclk drstn den dcomp dcal] adc_buff
Ada [dctlp0 dctlp1 dctlp2 dctlp3 dctlp4 dctlp5 dctlp6 dctlp7 dctln0 dctln1 dctln2 dctln3 dctln4 dctln5 dctln6 dctln7 dres0 dres1 dres2 dres3 dres4 dres5 dres6 dres7 dsamp dclkc] [ctlp_0_ ctlp_1_ ctlp_2_ ctlp_3_ ctlp_4_ ctlp_5_ ctlp_6_ ctlp_7_ ctln_0_ ctln_1_ ctln_2_ ctln_3_ ctln_4_ ctln_5_ ctln_6_ ctln_7_ res0 res1 res2 res3 res4 res5 res6 res7 sample clkc] dac_buff
Ada2 [dtrim4 dtrim3 dtrim2 dtrim1 dtrim0 dtrimb4 dtrimb3 dtrimb2 dtrimb1 dtrimb0] [trim_4_ trim_3_ trim_2_ trim_1_ trim_0_ trimb_4_ trimb_3_ trimb_2_ trimb_1_ trimb_0_ ] dac_buff
}
E {}
B 6 1200 -210 1220 -70 {}
B 6 940 -210 960 -70 {}
P 4 5 1220 -230 1220 -50 940 -50 940 -230 1220 -230 {dash=4 fill=True}
P 4 5 961 -209 961 -71 1199 -71 1199 -209 961 -209 {}
P 6 5 1220 -210 940 -210 940 -230 1220 -230 1220 -210 {fill=true}
P 6 5 1220 -50 940 -50 940 -70 1220 -70 1220 -50 {fill=true}
T {sar_logic.sp} 1110 -140 0 1 0.2 0.2 {}
T {SAR-CTL} 1120 -170 0 1 0.4 0.4 {}
N 620 -410 730 -410 { lab=vn}
N 780 -540 780 -510 { lab=avdd}
N 1110 -420 1125 -420 { lab=#net1}
N 980 -370 1010 -370 { lab=avss}
N 1010 -390 1010 -370 { lab=avss}
N 980 -510 1010 -510 { lab=avdd}
N 1010 -510 1010 -490 { lab=avdd}
N 150 -600 180 -600 { lab=vinp}
N 120 -550 180 -550 { lab=ctlp[7:0]}
N 150 -280 180 -280 { lab=vinn}
N 120 -230 180 -230 { lab=ctln[7:0]}
N 610 -410 620 -410 { lab=vn}
N 330 -480 330 -450 { lab=avss}
N 330 -160 330 -130 { lab=avss}
N 330 -710 330 -680 { lab=avdd}
N 1110 -460 1160 -460 { lab=comp}
N 780 -370 780 -340 { lab=avss}
N 860 -420 920 -420 { lab=outn}
N 860 -460 920 -460 { lab=outp}
N 150 -210 180 -210 { lab=avss}
N 150 -530 180 -530 { lab=avdd}
N 810 -550 810 -490 { lab=trim[4:0]}
N 810 -550 870 -550 { lab=trim[4:0]}
N 830 -520 830 -480 { lab=trimb[4:0]}
N 900 -210 940 -210 { lab=clkc}
N 830 -520 900 -520 { lab=trimb[4:0]}
N 1160 -460 1270 -460 { lab=comp}
N 810 -390 810 -210 { lab=clkc}
N 810 -210 820 -210 { lab=clkc}
N 810 -70 940 -70 { lab=sample}
N 810 -110 940 -110 { lab=ctln[7:0]}
N 810 -150 940 -150 { lab=ctlp[7:0]}
N 1070 -290 1070 -230 { lab=trim[4:0]}
N 1110 -300 1110 -230 { lab=trimb[4:0]}
N 1220 -120 1340 -120 { lab=result[7:0]}
N 1220 -90 1340 -90 { lab=valid}
N 1270 -460 1270 -210 { lab=comp}
N 1220 -150 1340 -150 { lab=clk}
N 1220 -170 1340 -170 { lab=en}
N 1220 -210 1270 -210 { lab=comp}
N 1220 -190 1340 -190 { lab=cal}
N 130 -310 180 -310 { lab=sample}
N 120 -630 180 -630 { lab=sample}
N 480 -280 610 -280 { lab=vn}
N 610 -410 610 -280 { lab=vn}
N 480 -600 610 -600 { lab=vp}
N 610 -470 730 -470 { lab=vp}
N 610 -600 610 -470 { lab=vp}
N 330 -400 330 -360 { lab=avdd}
N 820 -210 900 -210 { lab=clkc}
N 1220 -70 1340 -70 { lab=rstn}
C {devices/lab_wire.sym} 730 -410 0 0 {name=l58 sig_type=std_logic lab=vn}
C {devices/lab_wire.sym} 180 -310 0 0 {name=l80 sig_type=std_logic lab=sample}
C {devices/lab_wire.sym} 180 -230 0 0 {name=l44 sig_type=std_logic lab=ctln[7:0]}
C {devices/lab_wire.sym} 900 -210 0 1 {name=l1 sig_type=std_logic lab=clkc}
C {devices/lab_wire.sym} 920 -460 0 0 {name=l39 sig_type=std_logic lab=outp}
C {devices/lab_wire.sym} 920 -420 0 0 {name=l41 sig_type=std_logic lab=outn}
C {devices/lab_wire.sym} 730 -470 0 0 {name=l62 sig_type=std_logic lab=vp}
C {devices/lab_wire.sym} 780 -510 3 1 {name=l66 sig_type=std_logic lab=avdd}
C {sar/latch/latch.sym} 1010 -440 0 0 {name=xlat}
C {devices/noconn.sym} 1125 -420 2 0 {name=l87}
C {devices/lab_wire.sym} 1010 -370 0 0 {name=l5 sig_type=std_logic lab=avss
}
C {devices/lab_wire.sym} 1010 -510 0 0 {name=l6 sig_type=std_logic lab=avdd
}
C {devices/iopin.sym} -100 -490 0 0 {name=p6 lab=avss}
C {devices/iopin.sym} -100 -520 0 0 {name=p8 lab=avdd}
C {devices/iopin.sym} -210 -490 0 0 {name=p7 lab=dvss}
C {devices/iopin.sym} -210 -520 0 0 {name=p9 lab=dvdd}
C {devices/ipin.sym} -100 -450 0 1 {name=p5 lab=vinp}
C {devices/ipin.sym} -100 -420 0 1 {name=p13 lab=vinn}
C {devices/opin.sym} -210 -260 2 1 {name=p1 lab=result[7:0]}
C {devices/ipin.sym} -210 -350 0 1 {name=p3 lab=clk}
C {devices/ipin.sym} -100 -350 0 1 {name=p11 lab=en}
C {devices/lab_wire.sym} 1110 -460 0 1 {name=l9 sig_type=std_logic lab=comp}
C {devices/noconn.sym} 1220 -210 0 0 {name=l12}
C {devices/lab_wire.sym} 180 -550 0 0 {name=l11 sig_type=std_logic lab=ctlp[7:0]}
C {devices/lab_wire.sym} 180 -600 0 0 {name=l19 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 180 -280 0 0 {name=l29 sig_type=std_logic lab=vinn}
C {devices/lab_wire.sym} 330 -360 1 0 {name=l24 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} 330 -480 3 0 {name=l15 sig_type=std_logic lab=avss}
C {devices/lab_wire.sym} 330 -160 3 0 {name=l25 sig_type=std_logic lab=avss}
C {devices/lab_wire.sym} 330 -680 1 0 {name=l14 sig_type=std_logic lab=avdd}
C {devices/opin.sym} -210 -230 2 1 {name=p14 lab=valid}
C {devices/ipin.sym} -210 -310 0 1 {name=p15 lab=cal}
C {devices/lab_wire.sym} 780 -370 3 0 {name=l2 sig_type=std_logic lab=avss}
C {code.sym} -220 -160 0 0 {name=INCLUDES only_toplevel=false 
format="tcleval(@value )"
value=".include \\\\$::DESIGN_PATH\\\\/sar/control/cmos_cells_digital.sp
.include \\\\$::DESIGN_PATH\\\\/sar/control/sar_logic.sp
"}
C {devices/lab_wire.sym} 180 -210 0 0 {name=l23 sig_type=std_logic lab=avss
}
C {devices/lab_wire.sym} 180 -530 0 0 {name=l31 sig_type=std_logic lab=avdd
}
C {devices/lab_wire.sym} 830 -520 0 1 {name=l3 sig_type=std_logic lab=trimb[4:0]
}
C {devices/lab_wire.sym} 810 -550 0 1 {name=l13 sig_type=std_logic lab=trim[4:0]}
C {devices/lab_wire.sym} 180 -630 0 0 {name=l4 sig_type=std_logic lab=sample}
C {devices/lab_wire.sym} 900 -70 0 0 {name=l7 sig_type=std_logic lab=sample}
C {devices/noconn.sym} 810 -70 0 0 {name=l8}
C {devices/lab_wire.sym} 900 -110 0 0 {name=l10 sig_type=std_logic lab=ctln[7:0]}
C {devices/noconn.sym} 810 -110 0 0 {name=l20[7:0]
}
C {devices/lab_wire.sym} 900 -150 0 0 {name=l21 sig_type=std_logic lab=ctlp[7:0]
}
C {devices/noconn.sym} 810 -150 0 0 {name=l22[7:0]
}
C {devices/lab_wire.sym} 1110 -230 3 1 {name=l30 sig_type=std_logic lab=trimb[4:0]
}
C {devices/lab_wire.sym} 1070 -230 3 1 {name=l32 sig_type=std_logic lab=trim[4:0]}
C {devices/noconn.sym} 1070 -290 1 0 {name=l33}
C {devices/noconn.sym} 1110 -300 1 0 {name=l34}
C {devices/lab_wire.sym} 1320 -120 0 0 {name=l35 sig_type=std_logic lab=result[7:0]
}
C {devices/noconn.sym} 1220 -120 0 0 {name=l36[7:0]
}
C {devices/lab_wire.sym} 1300 -90 0 0 {name=l36 sig_type=std_logic lab=valid
}
C {devices/noconn.sym} 1220 -90 0 0 {name=l37
}
C {devices/noconn.sym} 940 -210 2 0 {name=l38}
C {devices/lab_wire.sym} 1300 -150 0 0 {name=l20 sig_type=std_logic lab=clk
}
C {devices/noconn.sym} 1220 -150 0 0 {name=l22
}
C {devices/lab_wire.sym} 1300 -170 0 0 {name=l40 sig_type=std_logic lab=en
}
C {devices/noconn.sym} 1220 -170 0 0 {name=l42
}
C {devices/lab_wire.sym} 1300 -190 0 0 {name=l43 sig_type=std_logic lab=cal
}
C {devices/noconn.sym} 1220 -190 0 0 {name=l45
}
C {sar/dac/dac.sym} 330 -270 0 0 {name=xdn
}
C {sar/dac/dac.sym} 330 -590 0 0 {name=xdp
}
C {sar/comparator/comparator.sym} 810 -280 0 0 {name=xcom
}
C {devices/lab_wire.sym} 1300 -70 0 0 {name=l27 sig_type=std_logic lab=rstn
}
C {devices/noconn.sym} 1220 -70 0 0 {name=l28
}
C {devices/ipin.sym} -100 -320 0 1 {name=p2 lab=rstn
}
