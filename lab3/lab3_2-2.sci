//(b)1
clf();
n = -2:8;
// x(-n+4) 
zn1 = [0, 0, 0, 1, 1, 1, 1, 2/3, 1/3, 0, 0]; 
plot2d3(n, zn1, style=5);
xtitle("z(n) = x(-n+4)", "n", "z(n)");
xgrid();
