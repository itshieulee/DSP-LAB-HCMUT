clf();

n = 0:4;
x = [1 2 3 2 1];
y_matrix = [0 1 0 -1 0];

subplot(3,1,1);
plot2d3(n, x, style=2);
xtitle("Input Signal x(n)", "n", "Amplitude");

subplot(3,1,2);
plot2d3(n, y_matrix, style=5);
xtitle("Output Signal y(n)", "n", "Amplitude");

// Energy Calculation
Ex = sum(x.^2);
Ey = sum(y_matrix.^2);

subplot(3,1,3);
bar([1 2], [Ex Ey]);
a = gca();
a.x_ticks = tlist(["ticks","locations","labels"], [1 2], ["Energy x","Energy y"]);
xtitle("Energy of Discrete Signals", "Signal", "Value");
