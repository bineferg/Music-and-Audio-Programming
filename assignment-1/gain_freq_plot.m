% Clear the workspace
clear all;
clear ws;

% Choose points along the frequency axis on which to take measurements.
x=[220 440 660 880 1000 1300 1500 1800 2000 3000 4000 5000 6000 7000 8000];

% Filter gain measurements of the first order filter at 1kHz
%y=[0.484 0.455 0.416 0.356 0.339 0.308 0.281 0.262 0.230 0.223 0.156 0.119 0.0905 0.0736 0.0591 .0446];
%yy=y./0.5;
%db=20.0*log10(yy);

% Filter gain measurement taken with...
y=[0.0617 0.072 0.111 0.226 0.154 0.0437 0.0231 0.0103 0.00771 0.00257 0.0 0.0 0.0 0.0 0.0]
yy=y./.1; % normalisation 
db=20.0*log10(yy); % dB scale

%Plot the data
plot(x,db);
ylabel('Magnitude (dB)');
xlabel('Frequency (Hz)');
