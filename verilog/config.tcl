# User config
set ::env(DESIGN_NAME) sarlogic

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Fill this
set ::env(CLOCK_PERIOD) "0.1"
set ::env(CLOCK_PORT) "clk"


# set ::env(PL_RANDOM_GLB_PLACEMENT) 1
set ::env(PL_ROUTABILITY_DRIVEN) 1


# My Options
set ::env(FP_SIZING) "absolute"
set ::env(DIE_AREA) "0 0 80 70"

set ::env(FP_IO_MODE) 0
set ::env(FP_IO_MIN_DISTANCE) 1
set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin.cfg
set ::env(FP_IO_VLENGTH) 1
set ::env(FP_IO_HLENGTH) 1

set ::env(FP_IO_VTHICKNESS_MULT) 2
set ::env(FP_IO_HTHICKNESS_MULT) 1

set ::env(TOP_MARGIN_MULT) 1
set ::env(BOTTOM_MARGIN_MULT) 1
set ::env(LEFT_MARGIN_MULT) 1
set ::env(RIGHT_MARGIN_MULT) 1

set ::env(FP_IO_VMETAL) "3"

# set ::env(PL_TARGET_DENSITY) 0.01
# set ::env(FP_CORE_UTIL) 1
# set ::env(DESIGN_IS_CORE) 0

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

