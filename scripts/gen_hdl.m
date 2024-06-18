load_system('tb_FFT');
DUT = 'tb_FFT/DUT';
checkhdl(DUT);
makehdl(DUT,'TargetDirectory','./hdlsrc','TargetLanguage','SystemVerilog');
close_system('tb_FFT');