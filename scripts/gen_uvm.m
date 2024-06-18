load_system('tb_FFT');

sequence    = 'tb_FFT/Sequence';

dpi_dut     = 'tb_FFT/DUT';

scoreboard  = 'tb_FFT/Scoreboard';

uvmbuild(dpi_dut,sequence,scoreboard);

close_system('tb_FFT');
