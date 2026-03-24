// Scilab code for plotting signals in part (b)
n = -5:10;
// (1) Sketch x(n)
xn = [zeros(1,5), ones(1,4), zeros(1,7)]; // n from -5 to 10
subplot(3,1,1); plot2d3(n, xn); xtitle("x(n)","n","amp");

// (2) y(n) = x(n^2)
yn = zeros(1, length(n));
for i = 1:length(n)
    idx = n(i)^2;
    if idx >= 0 & idx <= 3 then yn(i) = 1; end
end
subplot(3,1,2); plot2d3(n, yn); xtitle("y(n) = x(n^2)","n","amp");

// (3) y'(n) = y(n-2)
yn_delayed = [zeros(1,2), yn(1:$-2)];
subplot(3,1,3); plot2d3(n, yn_delayed); xtitle("y(n-2)","n","amp");
