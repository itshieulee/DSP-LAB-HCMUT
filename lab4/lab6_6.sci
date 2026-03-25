// --- 1. Define Signals ---
x = [1, 2, -3, 2, 1];
h = [1, 0, -1];
Lx = length(x);
Lh = length(h);
Ly = Lx + Lh - 1;

// --- 2. Folding and Shifting Method ---
y_fold = zeros(1, Ly);
for n = 1:Ly
    sum_val = 0;
    for k = 1:Lh
        x_idx = n - k + 1; // Scilab arrays start at index 1
        if (x_idx >= 1 & x_idx <= Lx) then
            sum_val = sum_val + h(k) * x(x_idx);
        end
    end
    y_fold(n) = sum_val;
end

disp("Convolution (Folding & Shifting):");
disp(y_fold);

// --- 3. Matrix Method ---
X_mat = zeros(Ly, Lh);
for i = 1:Lh
    // Insert sequence x into the matrix, shifting down by 1 each column
    X_mat(i:i+Lx-1, i) = x';
end
y_matrix = X_mat * h';

disp("Convolution (Matrix Method):");
disp(y_matrix');

// --- 4. Plotting Signals and Energy ---
nx = 0:Lx-1;
ny = 0:Ly-1;

Energy_x = x.^2;
Energy_y = y_matrix'.^2;

figure(1);
clf();

subplot(2,2,1);
plot2d3('gnn', nx, x);
xtitle("Signal x(n)", "n", "Amplitude");
xgrid();

subplot(2,2,2);
plot2d3('gnn', ny, y_matrix');
xtitle("Convolution y(n)", "n", "Amplitude");
xgrid();

subplot(2,2,3);
plot2d3('gnn', nx, Energy_x);
xtitle("Energy of x(n)", "n", "Energy");
xgrid();

subplot(2,2,4);
plot2d3('gnn', ny, Energy_y);
xtitle("Energy of y(n)", "n", "Energy");
xgrid();
