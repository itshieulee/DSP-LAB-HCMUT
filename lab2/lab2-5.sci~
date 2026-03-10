clc;
clear;
close;

// Define signal
n = -1:1;
x = [1 3 -2];    // x(-1)=1, x(0)=3, x(1)=-2

// Compute x(-n)
x_flip = [x(3) x(2) x(1)];  // reverse order

// Even and Odd parts
xe = (x + x_flip)/2;
xo = (x - x_flip)/2;

// Plot all in ONE window
figure(1)

// Original signal
subplot(3,1,1)
plot2d3(n, x)
title("Original Signal x(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()

// Even component
subplot(3,1,2)
plot2d3(n, xe)
plot(n,xe, 'ro')
title("Even Component x_e(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()

// Odd component
subplot(3,1,3)
plot2d3(n, xo)
plot(n,xo, 'ro')
title("Odd Component x_o(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()
