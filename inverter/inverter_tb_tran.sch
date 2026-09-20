v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -310 70 -310 85 {lab=0}
N -240 70 -240 85 {lab=0}
N -3.75 38.75 -3.75 61.25 {lab=0}
N -78.75 0 -60 0 {lab=Vin}
N -3.75 -56.25 -3.75 -38.75 {lab=Vdd}
N -240 -7.5 -240 10 {lab=Vin}
N -310 -11.25 -310 10 {lab=Vdd}
N 75 0 98.75 0 {lab=Vout}
C {vsource.sym} -240 40 0 0 {name=Vin value="pulse(0 1.8 0 100ps 100ps 20us 40us)" savecurrent=false}
C {vsource.sym} -310 40 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -3.75 61.25 0 0 {name=l1 lab=0}
C {gnd.sym} -240 85 0 0 {name=l2 lab=0}
C {gnd.sym} -310 85 0 0 {name=l3 lab=0}
C {lab_pin.sym} -3.75 -56.25 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -78.75 0 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -240 -7.5 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -310 -11.25 1 0 {name=p4 sig_type=std_logic lab=Vdd
}
C {opin.sym} 98.75 0 0 0 {name=p5 lab=Vout
}
C {devices/code.sym} -100 120 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/code_shown.sym} 80 90 0 0 {name=NGSPICE
only_toplevel=true
value="
.tran 0.01u 80u
.save all
.control
run
plot Vin 
plot Vout
.endc
" }
C {/foss/designs/inverter/inverter.sym} 20 0 0 0 {name=x1}
