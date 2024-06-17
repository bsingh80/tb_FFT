function [yOut,validOut] = dutFFT(yIn,validIn,FFTLength)
%HDLFFT 
% Processes one sample of FFT data using the dsphdl.FFT System object(TM)
% yIn is a fixed-point scalar or column vector. 
% validIn is a logical scalar value.
% You can generate HDL code from this function.

  persistent fftN;
  if isempty(fftN)
    fftN = dsphdl.FFT('FFTLength',FFTLength);
  end    
  [yOut,validOut] = fftN(yIn,validIn);
end
