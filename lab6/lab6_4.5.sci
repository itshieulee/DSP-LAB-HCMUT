
clf();
w = [-3*%pi/4, -%pi/2, -%pi/4, 0, %pi/4, %pi/2, 3*%pi/4];
P = [0.0625, 0.25, 1, 4, 1, 0.25, 0.0625];
f = gcf();
f.figure_name = "Exercise 4.5 Power Density Spectrum";
plot2d3(w, P, style=2);
plot2d(w, P, style=-9);
xtitle("Power Density Spectrum", "Frequency (rad/sample)", "Power");
xgrid(1);
