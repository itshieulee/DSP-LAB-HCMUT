
// Scilab code for Exercise 3.20: Pole-Zero Pattern
clf();

// Example parameters for visualization
r = 0.8;
w0 = %pi/4;

// Calculate pole locations
p1_real = r * cos(w0);
p1_imag = r * sin(w0);
p2_real = r * cos(-w0);
p2_imag = r * sin(-w0);

// Plot Setup
a = gca();
a.data_bounds = [-1.5, -1.5; 1.5, 1.5];
a.isoview = "on";
xgrid();
title("Pole-Zero Pattern for x1(n)", "fontsize", 4);

// Draw unit circle for reference
t = linspace(0, 2*%pi, 100);
plot2d(cos(t), sin(t), style=3); // Dashed line

// Plot Zero (Circle marker)
plot2d([0], [0], style=-9); 

// Plot Poles (Cross markers)
plot2d([p1_real, p2_real], [p1_imag, p2_imag], style=-2);

// Add Labels
xstring(0.05, 0.05, "Zero at Origin");
xstring(p1_real + 0.05, p1_imag, "p1 = r*exp(j*w0)");
xstring(p2_real + 0.05, p2_imag, "p2 = r*exp(-j*w0)");
