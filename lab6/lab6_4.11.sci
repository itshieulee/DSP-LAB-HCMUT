clf();

n = -6:6;
y = zeros(1, length(n));

y(find(n==-5)) = 0.5;
y(find(n==-4)) = 0;
y(find(n==-3)) = 1 - 0.5 * %i;
y(find(n==-2)) = 2;
y(find(n==-1)) = 1 + 2 * %i;
y(find(n==0))  = 0;
y(find(n==1))  = 0.5 - 2 * %i;
y(find(n==2))  = 0;
y(find(n==3))  = 0.5 * %i;

// Plot Real Part
subplot(2, 1, 1);
plot2d3(n, real(y), style=2); // stem plot
plot2d(n, real(y), style=-9); // circle markers
xtitle("Real part of y(n)", "n", "Re{y(n)}");
xgrid();

// Plot Imaginary Part
subplot(2, 1, 2);
plot2d3(n, imag(y), style=5); // stem plot
plot2d(n, imag(y), style=-9); // circle markers
xtitle("Imaginary part of y(n)", "n", "Im{y(n)}");
xgrid();
