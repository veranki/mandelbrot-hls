############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mandelbrot-hls
set_top mandlebrot_main
add_files mandelbrot-hls/mandelbrot.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./mandelbrot-hls/solution1/directives.tcl"
#csim_design -compiler gcc
csynth_design
#cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
