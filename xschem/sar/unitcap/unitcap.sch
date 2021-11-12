v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 70 -170 70 -140 { lab=cp}
N 70 -170 80 -170 { lab=cp}
N 70 -80 70 -50 { lab=cn}
N 70 -50 80 -50 { lab=cn}
C {devices/iopin.sym} 80 -170 0 0 {name=p1 lab=cp}
C {devices/iopin.sym} 80 -50 0 0 {name=p2 lab=cn}
C {xschem_sky130/sky130_fd_pr/cap_mim_m3_1.sym} 70 -110 0 0 {name=C1 model=cap_mim_m3_1 W=2 L=2 MF=1 spiceprefix=X
}
