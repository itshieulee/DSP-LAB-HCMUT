// Scilab code for Exercise 4.9
clf();
w = linspace(-%pi, %pi, 1000);

// Helper arrays
Xa = zeros(1, 1000);
Xf = zeros(1, 1000);
Xg = zeros(1, 1000);

// ---- Part (a): x(n) = u(n) - u(n-6) ----
n_a = 0:5;
x_a = ones(1, 6);
for k = 1:length(n_a)
    Xa = Xa + x_a(k) * exp(-%i * w * n_a(k));
end

// ---- Part (f): x(n) = 2 - (0.5)^n for |n| <= 4 ----
n_f = -4:4;
x_f = 2 - (0.5).^n_f;
for k = 1:length(n_f)
    Xf = Xf + x_f(k) * exp(-%i * w * n_f(k));
end

// ---- Part (g): x(n) = {-2, -1, 0, 1, 2} ----
n_g = -2:2;
x_g = [-2, -1, 0, 1, 2];
for k = 1:length(n_g)
    Xg = Xg + x_g(k) * exp(-%i * w * n_g(k));
end

// Plotting (a)
subplot(3, 2, 1); plot(w, abs(Xa)); title("Mag |X_a(w)|"); xgrid();
subplot(3, 2, 2); plot(w, atan(imag(Xa), real(Xa))); title("Phase arg(X_a)"); xgrid();

// Plotting (f)
subplot(3, 2, 3); plot(w, abs(Xf)); title("Mag |X_f(w)|"); xgrid();
subplot(3, 2, 4); plot(w, atan(imag(Xf), real(Xf))); title("Phase arg(X_f)"); xgrid();

// Plotting (g)
subplot(3, 2, 5); plot(w, abs(Xg)); title("Mag |X_g(w)|"); xgrid();
subplot(3, 2, 6); plot(w, atan(imag(Xg), real(Xg))); title("Phase arg(X_g)"); xgrid();
