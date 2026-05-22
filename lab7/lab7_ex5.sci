// Xóa dữ liệu cũ và đóng các cửa sổ đồ thị
clear; clc; xdel(winsid());

// 1. Định nghĩa trục tần số omega (từ -pi đến pi, lấy 1000 điểm cho mịn)
omega = linspace(-%pi, %pi, 1000);

// 2. Biểu thức DTFT đã tính toán
X1 = 3 + 4*cos(omega) + 2*cos(2*omega);

// 3. Tính phổ biên độ và phổ pha
magnitude = abs(X1); // Phổ biên độ là trị tuyệt đối

// Phổ pha: Mặc định là 0 (vì là số thực dương)
// Ở những đoạn X1 bị âm, pha sẽ bị giật xuống -pi
phase = zeros(omega); 
phase(X1 < 0) = -%pi; 

// 4. Vẽ đồ thị
f = figure();
f.background = 8; // Tùy chọn nền trắng cho dễ nhìn

// --- Đồ thị Phổ biên độ ---
subplot(2, 1, 1);
plot(omega, magnitude, 'b-', 'LineWidth', 2);
title('Phổ biên độ |X_1(\omega)|', 'fontsize', 4, 'fontname', 3);
xlabel('Tần số \omega (rad/sample)', 'fontsize', 3);
ylabel('Biên độ', 'fontsize', 3);
xgrid(1);

// --- Đồ thị Phổ pha ---
subplot(2, 1, 2);
plot(omega, phase, 'r-', 'LineWidth', 2);
title('Phổ pha \angle X_1(\omega)', 'fontsize', 4, 'fontname', 3);
xlabel('Tần số \omega (rad/sample)', 'fontsize', 3);
ylabel('Pha (rad)', 'fontsize', 3);
// Chỉnh lại trục Y của phổ pha cho đẹp (-pi đến pi)
a = gca();
a.y_ticks = tlist(["ticks", "locations", "labels"], [-%pi, 0, %pi], ["-\pi", "0", "\pi"]);
xgrid(1);
