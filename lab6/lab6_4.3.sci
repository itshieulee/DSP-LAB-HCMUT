clf();
tau = 1;
F = linspace(-5, 5, 1000);
sinc_val = ones(1, length(F));
idx = find(F <> 0);
sinc_val(idx) = sin(%pi * F(idx) * tau) ./ (%pi * F(idx) * tau);
Xa = tau * sinc_val.^2;

mag_Xa = abs(Xa);
phase_Xa = zeros(1, length(F)); 

f = gcf();
f.figure_name = "Exercise 4.3 Spectra";

subplot(2, 1, 1);
plot(F, mag_Xa, 'b', 'thickness', 2);
xtitle("Magnitude Spectrum |Xa(F)|", "Frequency F", "Magnitude");
xgrid(1);

subplot(2, 1, 2);
plot(F, phase_Xa, 'r', 'thickness', 2);
ax = gca();
ax.data_bounds = [-5, -1; 5, 1];
xtitle("Phase Spectrum arg(Xa(F))", "Frequency F", "Phase (rad)");
xgrid(1);
