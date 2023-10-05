onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib win_multipiler_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {win_multipiler.udo}

run -all

quit -force
