clc;
clear;
close;

// Define n
n = -5:5;

// Unit ramp
ur = zeros(n);
for k = 1:length(n)
    if n(k) >= 0 then
        ur(k) = n(k);
    else
        ur(k) = 0;
    end
end

// Plot
figure(1)
plot2d3(n, ur)
plot(n,ur, 'ro')
title("Unit Ramp Signal u_r(n)")
xlabel("n")
ylabel("Amplitude")
xgrid()
