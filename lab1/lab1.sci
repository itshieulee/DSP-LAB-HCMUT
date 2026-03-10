clc;
clear;

// =======================
// Task 1
// =======================
x1 = 1:4;
result1 = x1 + 1;

// Print result 1
disp("Result 1 (x + 1):");
disp(result1);


// =======================
// Task 2
// =======================
x2 = 1:4;
y2 = 5:8;
result2 = x2 .* y2;

// Print result 2
disp("Result 2 (x .* y):");
disp(result2);


// =======================
// Task 3 (UPDATED)
// =======================
// Use 100 points instead of 10
x3 = linspace(0, %pi, 100);
result3 = sin(x3);

disp("Result 3 (sin(x)):");
disp(result3);


// =======================
// Plot all curves
// =======================
figure();

// Plot Task 1
plot(x1, result1, '-o');

// Add next plots
plot(x2, result2, '-s');
plot(x3, result3);   // smooth sine curve

legend("x + 1", "x .* y", "sin(x)");
xlabel("X values");
ylabel("Y values");
title("Plots of Three Tasks (Smooth Sine Curve)");
