v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3850 -450 3850 -380 { lab=vdda1}
N 3750 -450 3850 -450 { lab=vdda1}
N 3850 -200 3850 -150 { lab=vssa1}
N 3760 -150 3850 -150 { lab=vssa1}
N 3710 -240 3750 -240 { lab=io_analog[4]}
N 4080 -260 4180 -260 { lab=io_out[17]}
N 3980 -200 3980 -100 { lab=io_in[18]}
N 3890 -200 3890 -80 { lab=vssd2}
N 3760 -80 3890 -80 { lab=vssd2}
N 3750 -500 3890 -500 { lab=vccd2}
N 3890 -500 3890 -380 { lab=vccd2}
N 3710 -340 3750 -340 { lab=io_analog[5]}
N 4010 -200 4010 -100 { lab=io_in[19]}
N 4030 -200 4030 -100 { lab=io_in[23]}
N 3980 -480 3980 -380 { lab=io_in[18]}
N 4080 -290 4180 -290 { lab=la_data_out[29:36]}
C {devices/iopin.sym} 3240 -470 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 3240 -440 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} 3240 -410 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} 3240 -380 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} 3240 -350 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} 3240 -320 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 3240 -290 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 3240 -260 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 3290 -190 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} 3290 -160 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} 3290 -130 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} 3290 -100 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} 3290 -70 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} 3290 -40 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} 3290 -10 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} 3290 20 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} 3280 80 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} 3280 110 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 3290 150 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} 3280 180 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} 3290 260 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} 3290 290 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 3280 570 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} 3280 320 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} 3280 350 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} 3250 410 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} 3250 440 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 3250 470 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} 3250 500 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} 3250 530 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} 3270 600 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} 3290 210 0 0 {name=p28 lab=la_oenb[127:0]}
C {devices/lab_pin.sym} 3750 -450 0 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 3760 -150 0 0 {name=l2 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 3750 -500 0 0 {name=l3 sig_type=std_logic lab=vccd2
}
C {devices/lab_pin.sym} 3710 -240 0 0 {name=l5 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_pin.sym} 3760 -80 0 0 {name=l6 sig_type=std_logic lab=vssd2
}
C {devices/lab_pin.sym} 4180 -290 0 1 {name=l7 sig_type=std_logic lab=la_data_out[29:36]
}
C {devices/lab_pin.sym} 4180 -260 0 1 {name=l11 sig_type=std_logic lab=io_out[17]
}
C {devices/lab_pin.sym} 3980 -100 1 1 {name=l12 sig_type=std_logic lab=io_in[18]
}
C {/home/christoph/Studium/projekte/design/mpw3-tapeout/caravel_user_project_analog/xschem/sar/sar/sar.sym} 4030 -110 0 0 {name=xsar
}
C {devices/lab_pin.sym} 3710 -340 0 0 {name=l4 sig_type=std_logic lab=io_analog[5]
}
C {devices/lab_pin.sym} 4010 -100 1 1 {name=l13 sig_type=std_logic lab=io_in[19]
}
C {devices/lab_pin.sym} 4030 -100 1 1 {name=l14 sig_type=std_logic lab=io_in[23]
}
C {devices/lab_pin.sym} 3980 -480 3 1 {name=l15 sig_type=std_logic lab=io_in[18]
}
