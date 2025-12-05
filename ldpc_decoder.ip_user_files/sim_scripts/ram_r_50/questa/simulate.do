onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ram_r_50_opt

do {wave.do}

view wave
view structure
view signals

do {ram_r_50.udo}

run -all

quit -force
