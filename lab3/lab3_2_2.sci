clc; clear; clf();

// ================= FUNCTIONS =================
function [y, yorigin] = delay(x, xorigin, k)
    if k >= 0 then
        y = [zeros(1, k), x];
        yorigin = xorigin + k;
    else
        y = x((-k+1):$);
        yorigin = xorigin + k;
    end
endfunction

function [y, yorigin] = advance(x, xorigin, k)
    [y, yorigin] = delay(x, xorigin, -k);
endfunction

function [y, yorigin] = fold(x, xorigin)
    y = flipdim(x, 2);
    yorigin = length(x) - xorigin + 1;
endfunction

// ================= ORIGINAL SIGNAL =================
xn = [1, 1, 1, 1, 1, 0.5, 0.5];
xorigin = 3;
nx = (1:length(xn)) - xorigin;

// ================= (a) =================
[yn, yorigin] = delay(xn, xorigin, 2);
ny = (1:length(yn)) - yorigin;
clf(); plot2d3(ny, yn, style=2);
xtitle("a) y(n) = x(n-2)", "n", "Amplitude"); xgrid();
sleep(1000);

// ================= (b) =================
[xf, forigin] = fold(xn, xorigin);
[yn, yorigin] = delay(xf, forigin, 4);
ny = (1:length(yn)) - yorigin;
clf(); plot2d3(ny, yn, style=5);
xtitle("b) y(n) = x(4-n)", "n", "Amplitude"); xgrid();
sleep(1000);

// ================= (c) =================
[yn, yorigin] = advance(xn, xorigin, 2);
ny = (1:length(yn)) - yorigin;
clf(); plot2d3(ny, yn, style=3);
xtitle("c) y(n) = x(n+2)", "n", "Amplitude"); xgrid();
sleep(1000);

// ================= (d) =================
un = double(nx <= 2);
yn = xn .* un;
clf(); plot2d3(nx, yn, style=2);
xtitle("d) y(n) = x(n)u(2-n)", "n", "Amplitude"); xgrid();
sleep(1000);

// ================= (e) =================
n_e = -1:5;
yn_e = zeros(1, length(n_e));
yn_e(find(n_e == 3)) = 1;
clf(); plot2d3(n_e, yn_e, style=4);
xtitle("e) y(n) = x(n-1)delta(n-3)", "n", "Amplitude"); xgrid();
sleep(1000);

// ================= (f) =================
nf = -2:2;
ynf = zeros(1, length(nf));
for i = 1:length(nf)
    idx = find(nx == nf(i)^2);
    if idx <> [] then
        ynf(i) = xn(idx);
    else
        ynf(i) = 0;
    end
end
clf(); plot2d3(nf, ynf, style=5);
xtitle("f) y(n) = x(n^2)", "n", "Amplitude"); xgrid();
sleep(1000);

// ================= (g,h) =================
n_all = -4:4;
x_full = zeros(1, length(n_all));
for i = 1:length(n_all)
    idx = find(nx == n_all(i));
    if idx <> [] then
        x_full(i) = xn(idx);
    end
end

x_fold = flipdim(x_full, 2);
xe = (x_full + x_fold) / 2;
xo = (x_full - x_fold) / 2;

clf();
subplot(2,1,1);
plot2d3(n_all, xe, style=2);
xtitle("g) Even part", "n", "Amplitude"); xgrid();

subplot(2,1,2);
plot2d3(n_all, xo, style=5);
xtitle("h) Odd part", "n", "Amplitude"); xgrid();
