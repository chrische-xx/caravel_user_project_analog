v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
P 4 5 0 -660 1370 -660 1370 0 0 0 0 -660 {}
P 4 2 500 -660 500 0 {}
P 4 2 500 -310 0 -310 {}
N 900 -220 930 -220 { lab=vss}
N 900 -220 900 -190 { lab=vss}
N 820 -220 820 -190 { lab=vdd}
N 820 -130 820 -90 { lab=GND}
N 900 -130 900 -90 { lab=GND}
N 740 -220 770 -220 { lab=vinn}
N 740 -220 740 -190 { lab=vinn}
N 740 -130 740 -90 { lab=GND}
N 640 -220 670 -220 { lab=vinp}
N 640 -220 640 -190 { lab=vinp}
N 640 -130 640 -90 { lab=GND}
N 820 -220 850 -220 { lab=vdd}
N 940 -450 1020 -450 { lab=result[7:0]}
N 710 -360 710 -330 { lab=vss}
N 750 -360 750 -330 { lab=vss}
N 710 -570 710 -540 { lab=vdd}
N 750 -570 750 -540 { lab=vdd}
N 580 -400 610 -400 { lab=vinn}
N 580 -500 610 -500 { lab=vinp}
N 1090 -220 1120 -220 { lab=clk}
N 1090 -220 1090 -190 { lab=clk}
N 1090 -130 1090 -90 { lab=GND}
N 840 -360 840 -330 { lab=clk}
N 1090 -500 1120 -500 { lab=en}
N 1090 -500 1090 -470 { lab=en}
N 1090 -410 1090 -370 { lab=GND}
N 870 -360 870 -330 { lab=en}
N 940 -420 990 -420 { lab=valid}
N 970 -220 1000 -220 { lab=cal}
N 970 -220 970 -190 { lab=cal}
N 970 -130 970 -90 { lab=GND}
N 840 -570 840 -540 { lab=cal}
N 50 -460 70 -460 { lab=GND}
N 50 -600 70 -600 { lab=GND}
N 50 -530 70 -530 { lab=GND}
N 50 -390 70 -390 { lab=GND}
N 540 -220 540 -190 { lab=rstn}
N 540 -130 540 -90 { lab=GND}
N 540 -220 570 -220 { lab=rstn}
N 890 -360 890 -330 { lab=rstn}
C {vsource.sym} 900 -160 0 0 {name=V1 value=0}
C {vsource.sym} 820 -160 0 0 {name=V2 value=1.4
}
C {lab_wire.sym} 930 -220 0 0 {name=l7 sig_type=std_logic lab=vss}
C {lab_wire.sym} 850 -220 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {gnd.sym} 820 -90 0 0 {name=l11 lab=GND}
C {gnd.sym} 900 -90 0 0 {name=l12 lab=GND}
C {vsource.sym} 740 -160 0 0 {name=V4 value=vsign
}
C {lab_wire.sym} 770 -220 0 0 {name=l17 sig_type=std_logic lab=vinn}
C {gnd.sym} 740 -90 0 0 {name=l18 lab=GND}
C {vsource.sym} 640 -160 0 0 {name=V5 value=vsigp
}
C {lab_wire.sym} 670 -220 0 0 {name=l19 sig_type=std_logic lab=vinp}
C {gnd.sym} 640 -90 0 0 {name=l20 lab=GND}
C {code.sym} 270 -450 0 0 {name=STDCELLS only_toplevel=false 
format="tcleval(@value )"
value="[sky130_models]"}
C {code.sym} 80 -140 0 0 {name=CTL 
only_toplevel=false
format="tcleval(@value )"
value="*sar control

*.options method trap
*.options method gear

.param MC_SWITCH=0
.param vin=0.05
.param vcm=0.7
.param vsigp=\\"\{vcm + vin/2\}\\"
.param vsign=\\"\{vcm - vin/2\}\\"

.tran 100e-9 48e-6

.control

run

meas tran d0 find v(xsar.res0) at=47e-6
meas tran d1 find v(xsar.res1) at=47e-6
meas tran d2 find v(xsar.res2) at=47e-6
meas tran d3 find v(xsar.res3) at=47e-6
meas tran d4 find v(xsar.res4) at=47e-6
meas tran d5 find v(xsar.res5) at=47e-6
meas tran d6 find v(xsar.res6) at=47e-6
meas tran d7 find v(xsar.res7) at=47e-6

print d0
print d1
print d2
print d3
print d4
print d5
print d6
print d7

eprvcd xsar.dclk xsar.den xsar.dsamp xsar.dctlp0 xsar.dctlp1 xsar.dctlp2 xsar.dctlp3 xsar.dctlp4 xsar.dctlp5 xsar.dctlp6 xsar.dctlp7 xsar.dctln0 xsar.dctln1 xsar.dctln2 xsar.dctln3 xsar.dctln4 xsar.dctln5 xsar.dctln6 xsar.dctln7 xsar.dcomp xsar.dsamp xsar.dvalid xsar.dtrim4 xsar.dtrim3 xsar.dtrim2 xsar.dtrim1 xsar.dtrim0 xsar.dtrimb4 xsar.dtrimb3 xsar.dtrimb2 xsar.dtrimb1 xsar.dtrimb0 xsar.dres0 xsar.dres1 xsar.dres2 xsar.dres3 xsar.dres4 xsar.dres5 xsar.dres6 xsar.dres7  > sarlogic.vcd
display > \\"$design_path/sim/sar_nets.txt\\"
edisplay > \\"$design_path/sim/sar_enets.txt\\"
write sar_tb.raw
*shell gtkwave \\"$design_path/sim/sarlogic.vcd\\" --script \\"$design_path/tools/scripts/gtkwave/nggtk.tcl\\" &

.endc
.end
"
tclcommand="exec xterm -geometry 100x40 -e nvim \\$::DESIGN_PATH\\/tb/sar/ctl.sp"}
C {lab_wire.sym} 940 -450 0 1 {name=l15 sig_type=std_logic lab=result[7:0]
}
C {lab_wire.sym} 710 -360 3 0 {name=l16 sig_type=std_logic lab=vss}
C {lab_wire.sym} 750 -360 3 0 {name=l23 sig_type=std_logic lab=vss}
C {lab_wire.sym} 710 -540 3 1 {name=l24 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 750 -540 3 1 {name=l25 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 610 -400 0 0 {name=l27 sig_type=std_logic lab=vinn}
C {lab_wire.sym} 610 -500 0 0 {name=l28 sig_type=std_logic lab=vinp}
C {vsource.sym} 1090 -160 0 0 {name=Vclk value="PULSE(0 1 1e-9 1e-9 1e-9 2e-6 4e-6)"
}
C {lab_wire.sym} 1120 -220 0 0 {name=l31 sig_type=std_logic lab=clk
}
C {gnd.sym} 1090 -90 0 0 {name=l32 lab=GND}
C {lab_wire.sym} 840 -360 3 0 {name=l33 sig_type=std_logic lab=clk
}
C {vsource.sym} 1090 -440 0 0 {name=Ven value="PULSE(0 1 0.5e-6 0.1e-6 0.1e-6 10e-6 10e-3)"
}
C {lab_wire.sym} 1120 -500 0 0 {name=l35 sig_type=std_logic lab=en
}
C {gnd.sym} 1090 -370 0 0 {name=l36 lab=GND}
C {lab_wire.sym} 870 -360 3 0 {name=l37 sig_type=std_logic lab=en
}
C {code.sym} 240 -140 0 0 {name=CORNERS
only_toplevel=true
format="tcleval( @value )"
spice_ignore="tcleval($cmdline_ignore)"
value="
* FET CORNERS
.include \\\\$::SKYWATER_MODELS\\\\/corners/tt.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/ff.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/ss.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/sf.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/fs.spice

* TT + R + C
*.include \\\\$::SKYWATER_MODELS\\\\/corners/tt_rmax_cmax.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/tt_rmin_cmin.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/tt_rmax_cmin.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/tt_rmin_cmax.spice

* FF + R + C
*.include \\\\$::SKYWATER_MODELS\\\\/corners/ff_rmax_cmax.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/ff_rmin_cmin.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/ff_rmax_cmin.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/ff_rmin_cmax.spice


* SS + R + C
*.include \\\\$::SKYWATER_MODELS\\\\/corners/ss_rmax_cmax.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/ss_rmin_cmin.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/ss_rmax_cmin.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/ss_rmin_cmax.spice

* SF + R + C
*.include \\\\$::SKYWATER_MODELS\\\\/corners/sf_rmax_cmax.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/sf_rmin_cmin.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/sf_rmax_cmin.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/sf_rmin_cmax.spice

* FS + R + C
*.include \\\\$::SKYWATER_MODELS\\\\/corners/fs_rmax_cmax.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/fs_rmin_cmin.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/fs_rmax_cmin.spice
*.include \\\\$::SKYWATER_MODELS\\\\/corners/fs_rmin_cmax.spice
"}
C {lab_wire.sym} 940 -420 0 1 {name=l38 sig_type=std_logic lab=valid
}
C {noconn.sym} 990 -420 2 0 {name=l39}
C {vsource.sym} 970 -160 0 0 {name=V3 value=0
}
C {lab_wire.sym} 1000 -220 0 0 {name=l40 sig_type=std_logic lab=cal
}
C {gnd.sym} 970 -90 0 0 {name=l43 lab=GND}
C {lab_wire.sym} 840 -540 3 1 {name=l44 sig_type=std_logic lab=cal
}
C {xschem_sky130/sky130_stdcells/inv_4.sym} 110 -460 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {noconn.sym} 150 -460 2 0 {name=l41}
C {gnd.sym} 50 -460 0 0 {name=l42 lab=GND}
C {xschem_sky130/sky130_stdcells/decap_8.sym} 330 -620 0 0 {name=x6 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ 
}
C {xschem_library/devices/launcher.sym} 150 -260 0 0 {name=h1
descr="simulation netlist"
tclcommand="set dummy_ignore true"
}
C {xschem_sky130/sky130_stdcells/decap_3.sym} 330 -580 0 0 {name=x8 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ 
}
C {noconn.sym} 1020 -450 2 0 {name=l49[7:0]
}
C {gnd.sym} 50 -600 0 0 {name=l2 lab=GND}
C {noconn.sym} 150 -600 2 0 {name=l3}
C {xschem_sky130/sky130_stdcells/buf_1.sym} 110 -600 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ 
}
C {sar/sar/sar.sym} 890 -270 0 0 {name=xsar
}
C {gnd.sym} 50 -530 0 0 {name=l10 lab=GND}
C {noconn.sym} 150 -530 2 0 {name=l13}
C {xschem_sky130/sky130_stdcells/inv_1.sym} 110 -530 0 0 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ 
}
C {xschem_sky130/sky130_stdcells/inv_2.sym} 110 -390 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ 
}
C {gnd.sym} 50 -390 0 0 {name=l1 lab=GND}
C {noconn.sym} 150 -390 2 0 {name=l4}
C {vsource.sym} 540 -160 0 0 {name=V7 value=1.4
}
C {lab_wire.sym} 570 -220 0 0 {name=l5 sig_type=std_logic lab=rstn
}
C {gnd.sym} 540 -90 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 890 -360 3 0 {name=l9 sig_type=std_logic lab=rstn
}
C {xschem_sky130/sky130_stdcells/tap_2.sym} 330 -540 0 0 {name=x5 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ 
}
C {xschem_library/devices/launcher.sym} 150 -210 0 0 {name=h2
descr="lvs netlist"
tclcommand="set dummy_ignore false"
}
