clc;
clear;
close;

// Define common index range
n = -1:3;

// Define x1(n)
x1 = [0 0 1 3 -2];  
// corresponds to n = -1:3

// Define x2(n)
x2 = [0 1 2 3 0];   
// corresponds to n = -1:3

// Compute y(n)
y = x1 + x2;

// Plot all signals in one window
figure(1)

// x1(n)
subplot(3,1,1)
plot2d3(n, x1)
plot(n,x1, 'ro')
title("Signal x1(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()

// x2(n)
subplot(3,1,2)
plot2d3(n, x2)
plot(n,x2, 'ro')
title("Signal x2(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()

// y(n)
subplot(3,1,3)
plot2d3(n, y)
plot(n,y, 'ro')
title("Signal y(n) = x1(n) + x2(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()

