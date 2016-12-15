transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+H:/Year\ 2/Labs/VERI/part_3 {H:/Year 2/Labs/VERI/part_3/spi2dac.v}

