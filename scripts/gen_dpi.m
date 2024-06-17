%% DPI-C component - Stimulus
ui32 =  coder.typeof(uint32(0));
ui8  = coder.typeof(uint8(0));

dpigen -d simDPI1 -testbench mlab_bench.m genframe2Sample.m -args {ui32, ui32,ui32,ui32,ui8,ui8,ui8} 

%% DPI-C component - Checker

%ConfigObj =  coder.config('dll','ecoder',false);


dpigen -d checkerDPI -testbench mlab_bench.m fftchecker.m -args {ones(1,1024),0,0,0,0,0,0} -launchreport

%%  UVM Sequence generation 
cfg =  coder.config('dll');

cfg.Toolchain = "Mentor Graphics QuestaSim/Modelsim (64-bit Windows)";


cfg2 = svdpiConfiguration();
cfg2.CoderConfiguration = cfg;
cfg2.ComponentKind = 'uvm-sequence';
cfg2.ComponentTypeName ='fft_seq';
cfg2.TemplateDictionary = {
'SequenceTransTypeName', 'fft_seq_trans',
'SequenceCount', '1',
'SequenceFlushCount', '2',
};

disp("Running MATLAB to UVM Component Generation Workflow")

dpigen -d fft_seq -config cfg2 -testbench mlab_bench.m genframe2Sample.m -args {ui32, ui32,ui32,ui32,ui8,ui8,ui8} 

