transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/gastd/sandbox/vhdl/trabalho_breg/breg.vhd}

vcom -93 -work work {/home/gastd/sandbox/vhdl/trabalho_breg/simulation/modelsim/breg_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  breg_tb

add wave *
view structure
view signals
run 10 ns
