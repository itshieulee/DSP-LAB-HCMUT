function [yn, yorigin] = advance(xn, xorigin, k)

    yn = xn;
    yorigin = xorigin + k;

    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;

    clf();
    subplot(2,1,1);
    plot2d3(nx, xn);
    plot(nx,xn, 'ro');
    title("Original x(n)");

    subplot(2,1,2);
    plot2d3(ny, yn);
    plot(ny,yn, 'ro');
    title("y(n) = x(n + 1)");

endfunction
[yn, yorigin] = advance([1 -2 3 6], 3, 1)
