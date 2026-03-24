function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)

    start = min(1 - x1origin, 1 - x2origin);
    endd  = max(length(x1n) - x1origin, length(x2n) - x2origin);

    n = start:endd;

    yorigin = -start + 1;

    y1 = zeros(1, length(n));
    y2 = zeros(1, length(n));

    for i = 1:length(n)
        idx1 = n(i) + x1origin;
        if idx1 >= 1 & idx1 <= length(x1n) then
            y1(i) = x1n(idx1);
        end

        idx2 = n(i) + x2origin;
        if idx2 >= 1 & idx2 <= length(x2n) then
            y2(i) = x2n(idx2);
        end
    end

    yn = y1 + y2;

    clf();
    subplot(3,1,1); plot2d3(n, y1); plot(n,y1, 'ro'); title("x1(n)");
    subplot(3,1,2); plot2d3(n, y2); plot(n,y2,'ro'); title("x2(n)");
    subplot(3,1,3); plot2d3(n, yn); plot(n,yn,'ro'); title("y(n)");

endfunction
[yn, yorigin] = add([0 1 3 -2], 1, [1 1 2 3], 2)
