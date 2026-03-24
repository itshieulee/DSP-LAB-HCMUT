// Scilab code for plotting signals in part (d)
clf();
n = 0:10;
xn = [ones(1,4), zeros(1,7)]; // x(n) for 0<=n<=3

// y(n) = n*x(n)
yn = n .* xn;

// y_delayed(n) = y(n-2)
yn_del = [0, 0, yn(1:9)];

// y_input_del(n) = n*x(n-2)
xn_del = [0, 0, xn(1:9)];
yn_input_del = n .* xn_del;

subplot(2,1,1); plot2d3(n, yn_del); xtitle("y(n-2)","n","amp");
subplot(2,1,2); plot2d3(n, yn_input_del); xtitle("n*x(n-2)","n","amp");
// Result: Graphs are different -> Time Variant
