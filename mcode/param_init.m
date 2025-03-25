
%Define Simulink Parameters
% FFT Length
FFTLength = Simulink.Parameter;
FFTLength.Max = 1024;
FFTLength.Min = 8;
FFTLength.Value = 1024;
FFTLength.DataType = "uint32";
FFTLength.CoderInfo.StorageClass = 'SimulinkGlobal';

% Sampling Frequency
Fs = Simulink.Parameter;
Fs.Max = 400e6;
Fs.Min = 50e6;
Fs.Value = 50e6;
Fs.DataType = "uint32";
Fs.CoderInfo.StorageClass = 'SimulinkGlobal';

%Frequence of Sine wave 1
F1 = Simulink.Parameter;
F1.Max = 100e6;
F1.Min = 10e6;
F1.Value = 10e6;
F1.DataType = "uint32";
F1.CoderInfo.StorageClass = 'SimulinkGlobal';

%Frequence of Sine wave 2

F2 = Simulink.Parameter;
F2.Max = 100e6;
F2.Min = 10e6;
F2.Value = 20e6;
F2.DataType = "uint32";
F2.CoderInfo.StorageClass = 'SimulinkGlobal';


% Frequence of error tolerance threshold
Threshold = Simulink.Parameter;
Threshold.Max = 1e6;
Threshold.Min = 1e3;
Threshold.Value = 1e3;
Threshold.DataType = "double";
Threshold.CoderInfo.StorageClass = 'SimulinkGlobal';


% Frequence of error tolerance threshold
TestMode = Simulink.Parameter;
TestMode.Max = 2;
TestMode.Min = 0;
TestMode.Value = 2;
TestMode.DataType = "uint8";
TestMode.CoderInfo.StorageClass = 'SimulinkGlobal';


% Frequence of error tolerance threshold
ReadyIn = Simulink.Parameter;
ReadyIn.Value = 1;
ReadyIn.DataType = "uint8";
ReadyIn.CoderInfo.StorageClass = 'SimulinkGlobal';

%Reset Sequence model
% Frequence of error tolerance threshold
Reset = Simulink.Parameter;
Reset.Value = 0;
Reset.DataType = "uint8";
Reset.CoderInfo.StorageClass = 'SimulinkGlobal';

%Reset Sequence model
% Frequence of error tolerance threshold
rngSeed = Simulink.Parameter;
rngSeed.Value = 0;
rngSeed.DataType = "uint32";
rngSeed.CoderInfo.StorageClass = 'SimulinkGlobal';




% Non-Tunable parameters
DUT_FFTLength = 1024;




