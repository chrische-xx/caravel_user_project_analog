# 8-bit SAR-ADC with offset calibration

This is a mixed-mode project featuring a 8-bit SAR-ADC, with offset calibration.
The logic section is synthesized using the openlane digital flow.

## SAR

The ADC is composed of a top-plate sampled CDAC, with a capacitor array of 
mimimum sized MIM caps.

The comparator is a single-stage regenerative comparator, with a MOM array 
for trimming ADC offset. 


## Layout

The layout is created using magic as a pcell generator and drc checker, while the 
connection of the design is done using klayout.


![layout](https://github.com/chrische-xx/caravel_user_project_analog/blob/main/docs/layout.png)


## Architecture

The ADC is composed of a differential top-plate sampled dac, which is made from an array of MIM capacitors.
The comparator is a regenerative comparator, which is followed by a latch to retain the output state during
reset. The latch output is fed into the logic section, which performs the standard binary search algorithm. 

![layout](https://github.com/chrische-xx/caravel_user_project_analog/blob/main/docs/pictures/architecture.png)


## Simulation

The simulation is carried out using ngspice using the mixed-mode xspice capabilities.
The digital section is synthesized using yosys that can then be bridged to/from the
analog section.

The Schematics are created using xschem, which also serves as the simulation framework.
![testbench](https://github.com/chrische-xx/caravel_user_project_analog/blob/main/docs/pictures/xschem.png)

The SAR schematic:
![testbench](https://github.com/chrische-xx/caravel_user_project_analog/blob/main/docs/pictures/sar.png)

The simulation output can then be viewed in both analog and digital domain.

Digital waveforms displayed using GTKWave
![gtkwave](https://github.com/chrische-xx/caravel_user_project_analog/blob/main/docs/pictures/gtkwave.png)

Analog waveforms displayed using Gnuplot in interactive mode.
![gtkwave](https://github.com/chrische-xx/caravel_user_project_analog/blob/main/docs/pictures/gnuplot.png)
