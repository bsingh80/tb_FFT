modelName = 'tb_FFT';
load_system(modelName);

%Create a Simulink.SimulationInput object and then use setModelParameter to set some coverage parameters.
covSet = Simulink.SimulationInput(modelName);
covSet = setModelParameter(covSet,'CovEnable','on');
covSet = setModelParameter(covSet,'CovMetricStructuralLevel','MCDC');
covSet = setModelParameter(covSet,'CovSaveSingleToWorkspaceVar','on');
covSet = setModelParameter(covSet,'StopTime','400');
covSet = setModelParameter(covSet,'CovScope','EntireSystem');

% Set this path if you want coverage only for a subsystem e.g for tb_FFT/DUT
%covSet = setModelParameter(covSet,'CovPath','/DUT');

%SIMPLE EXAMPLE
% The values can be in a loop
%TestMode is a simulink parameter, Each run is with different Value 
TestMode.Value = 0;
covSet = setModelParameter(covSet,'CovSaveName','dataObj1');
simOut1 = sim(covSet);

TestMode.Value = 1;
covSet = setModelParameter(covSet,'CovSaveName','dataObj2');
simOut2 = sim(covSet);

TestMode.Value = 2;
covSet = setModelParameter(covSet,'CovSaveName','dataObj3');
simOut3 = sim(covSet);

%Generating a Coverage Report
cvhtml('merged_cov',dataObj1,dataObj2,dataObj3);
cvsave('mycov_db',dataObj1,dataObj2,dataObj3);






