-makelib xcelium_lib/xil_defaultlib -sv \
  "E:/VIVADO/VIVADO2018.3/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/VIVADO/VIVADO2018.3/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../ldpc_decoder.srcs/sources_1/ip/ram_app_16/sim/ram_app_16.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

