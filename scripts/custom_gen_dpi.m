%% DPI-C component - Stimulus
ui32 =  coder.typeof(uint32(0));
ui8  = coder.typeof(uint8(0));


%%  UVM Sequence generation 
cfg =  coder.config('dll');

cfg.Toolchain = "Mentor Graphics QuestaSim/Modelsim (64-bit Windows)";


cfg2 = svdpiConfiguration();
cfg2.CoderConfiguration = cfg;
cfg2.ComponentKind = 'custom';
cfg2.ComponentTypeName ='fft_seq';

cfg2.ComponentTemplateFiles = '../template/Custom_SequenceComponentML.svt';
cfg2.TestBenchTemplateFiles = 'C:\Program Files\MATLAB\R2024a\toolbox\hdlverifier\dpigenerator\rtw\SequenceTestBenchML.svt';

addPortGroup(cfg2,'SEQUENCE_INPUTS',{'Len','Fs','f1','f2','mode','i_ready','rst'});

cfg2.TemplateDictionary = {
'SequenceTransTypeName', 'fft_seq_trans',
'SequenceCount', '1',
'SequenceFlushCount', '2',
};

disp("Running MATLAB to UVM Component Generation Workflow")

dpigen -d custom_fft_seq -config cfg2 -testbench mlab_bench.m genframe2Sample.m -args {ui32, ui32,ui32,ui32,ui8,ui8,ui8} 

