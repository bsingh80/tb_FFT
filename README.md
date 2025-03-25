# README - tb_FFT

## added dummy section

## Note
This is not a shipping example from MATHWORKS. This example has been prepared by bsingh\@mathworks.com
as part of exploring MATLAB/Simulink based workflows for generating Testbench infrastructure in SystemVerilog
(SV-DPI-C models and UVM bench). Please refer to MATHWORKS documentation or contact me in case of questions.


## Folder structure
- **mcode**
    This folder contains the MATLAB code and parameter initialization script
    - **calc_fft.m**  calculates FFT for reference FRAME and is called by fftchecker.m
    - **fftchecker.m**  This function contains Self-checking logic and compares DUT calculated FFT results against Expected output
    - **genStim.m**     This function generates Stimulus as a Vector for FFT block
    - **genframes2Sample.m** This function calls genStim and then streams samples from the genStim Vector output to the FFT block
    - **mlab_bench.m**  This function is MATLAB only testbench for FFT block
    - **param_init**    This script setups all Simulink parameters and Variables need by the model
    
- **models**
    - **tb_FFT.slx**    Model of Simulink Testbench

- **rtl**
    - RTL of FFT 

- **scripts**
    - gen_dpi.m  Script to generate SV DPI-C model for Stimulus function  and Checker function
    - gen_uvm.m  Script to generate UVM bench from tb_FFT.slx
    - init_var.m Simulink Project Startup script.  
    - test_script.mlx - Live script used for building initial bench for FFT 

## Instructions to run the model
   - Open the Bench_FFT.prj. This will run the startup script init_var.m and create work folder
   - From project view in middle pane, open models/tb_FFT.slx
   - Run the model 

## Usecase - Verification Workflow
   
### MATLAB to SV DPI-C component generation
- **Initial analysis**
  DV engineer uses test script to do analysis and build MATLAB functions for Stimulus and Checker
- **MATLAB function based TB**     DV engineer automatically conversts live script to mlab_bench
- **SV DPI-C component generation** DV engineer integrates the SV DPI-C components in his SV testbench          
- DV engineers build his SV Testbench or UVM testbench reusing the SV DPI-C components

### Build UVM bench from Simulink
- **Reuse MATLAB stimulus and Checker function** in MATLAB functions block to build Sequence and Scoreboard subsystem
- **Build UVM bench** Run gen_uvm script from work folder that is created by the project
- run uvm test from work/uvm_build/tb_FFT_uvm_testbench/top directory by using run scripts for the 
   corresponding EDA tool

### Cosimulation bench for Handcoded RTL
- **Import Handcoded RTL** Use cosimWizard from MATLAB prompt
- **Build Cosim bench** Example work/bench_cosim_wizard/Cosim_tb_FFT_in.slx
- Please contact bsingh@mathworks.com if interested in this workflow to 
