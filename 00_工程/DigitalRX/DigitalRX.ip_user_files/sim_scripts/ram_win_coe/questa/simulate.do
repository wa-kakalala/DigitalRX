onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ram_win_coe_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ram_win_coe.udo}

run -all

quit -force
