// Scilab code for Exercise 4.2: Magnitude and Phase Spectra
clf(); // Clear current figure

// 1. Define Parameters
A = 1; // Arbitrary amplitude
a = 1; // Assuming a > 0
F = linspace(-5, 5, 1000); // Frequency range in Hz
Omega = 2 * %pi * F; // Angular frequency

// 2. Compute Spectra for Signal (a): xa(t) = Ae^{-at} u(t)
Xa = A ./ (a + %i * Omega);
mag_Xa = abs(Xa);
phase_Xa = atan(imag(Xa), real(Xa)); 

// 3. Compute Spectra for Signal (b): xb(t) = Ae^{-a|t|}
Xb = (2 * a * A) ./ (a^2 + Omega.^2);
mag_Xb = abs(Xb);
phase_Xb = atan(imag(Xb), real(Xb)); // This will be purely 0

// 4. Plotting Setup
f = gcf();
f.figure_name = "Exercise 4.2 Spectra";

// ---- Plots for Signal (a) ----
subplot(2, 2, 1);
plot(F, mag_Xa, 'b', 'thickness', 2);
xtitle("Magnitude Spectrum |Xa(F)|", "Frequency F", "Magnitude");
xgrid(1);

subplot(2, 2, 3);
plot(F, phase_Xa, 'r', 'thickness', 2);
xtitle("Phase Spectrum arg(Xa(F))", "Frequency F", "Phase (rad)");
xgrid(1);

// ---- Plots for Signal (b) ----
subplot(2, 2, 2);
plot(F, mag_Xb, 'b', 'thickness', 2);
xtitle("Magnitude Spectrum |Xb(F)|", "Frequency F", "Magnitude");
xgrid(1);

subplot(2, 2, 4);
plot(F, phase_Xb, 'r', 'thickness', 2);
// Using data bounds to keep the zero-line centered since it's flat
a = gca(); 
a.data_bounds = [-5, -1; 5, 1]; 
xtitle("Phase Spectrum arg(Xb(F))", "Frequency F", "Phase (rad)");
xgrid(1);
