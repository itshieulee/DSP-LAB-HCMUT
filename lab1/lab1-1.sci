clc;
clear;
close;

// =====================
// Parameters
// =====================
A = 3;
f = 50;             // analog frequency (Hz)
Fs = 300;           // sampling frequency
Ts = 1/Fs;
Delta = 0.1;

// =====================
// Analog signal (5 periods)
// =====================
T = 1/f;
t = 0:0.0001:5*T;      
xa = A*sin(100*%pi*t);

// =====================
// Discrete signal
// =====================
n = 0:29;              // 5 periods (period = 6 → 30 samples)
xn = A*sin((%pi/3)*n);

// =====================
// Quantized signal (truncation)
// =====================
xq = Delta*fix(xn/Delta);

// =====================
// Plotting in ONE WINDOW
// =====================
figure(1);

// Analog signal
subplot(3,1,1)
plot(t, xa)
title("Analog Signal x_a(t)")
xlabel("Time (s)")
ylabel("Amplitude")
xgrid()

// Discrete signal
subplot(3,1,2)
plot2d3(n, xn)
plot(n,xn, 'ro')
title("Discrete Signal x(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()

// Quantized signal
subplot(3,1,3)
plot2d3(n, xq)
plot(n,xq, 'ro')
title("Quantized Signal x_q(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()
