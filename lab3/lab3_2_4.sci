// Define the signal and time axis
n = -2:2;
xn = [2, 3, 4, 5, 6];

// Calculate folded signal x(-n)
x_fold = flipdim(xn, 2);

// Even part calculation
xe = (xn + x_fold) / 2;

// Odd part calculation
xo = (xn - x_fold) / 2;

// Plotting the results
clf();
subplot(3, 1, 1);
plot2d3(n, xn); 
xtitle("Original Signal x(n)", "n", "Amplitude");
xgrid();

subplot(3, 1, 2);
plot2d3(n, xe, style=2); 
xtitle("Even Component x_e(n)", "n", "Amplitude");
xgrid();

subplot(3, 1, 3);
plot2d3(n, xo, style=5); 
xtitle("Odd Component x_o(n)", "n", "Amplitude");
xgrid();
