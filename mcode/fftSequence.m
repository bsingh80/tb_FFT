function [txSig] = fftSequence(Len, Fs,F1,F2,Mode,seed)

%#codegen

rng(seed);

% Generate Stimulus Data
MODE_SINE  = 0;
MODE_CHIRP = 1;
MODE_NOISE = 2;

coder.varsize('t',[ 1 1024] ,[0 1]);

txSig = zeros(1,1024);
t = double((0:Len-1)/Fs);

F1 = double(F1);
F2 = double(F2);

switch Mode
    case MODE_SINE        
        xSig = 1.2*sin(2*pi*F1*t) + 1.5*cos(2*pi*F2*t); 
    case MODE_CHIRP
        xSig = chirp(t,F1,(Len-1)/Fs,F2);  %Chirp with linear instaneous freq deviation
    case MODE_NOISE 
         xSig = sin(2*pi*F1*t) + 0.75*cos(2*pi*F2*t) + 0.1*randn(size(t));
    otherwise
         xSig = 1.2*sin(2*pi*F1*t);
end


txSig(1:Len) = xSig(1:Len);
end

