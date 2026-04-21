// Scilab code to sketch ROC boundaries for Problem 3.3
clf();

// Helper function to draw circles
function draw_circle(r, col, style)
    t = linspace(0, 2*%pi, 100);
    plot2d(r*cos(t), r*sin(t), style=col);
    e = gce();
    e.children.line_style = style;
endfunction

// Initialize Plot
a = gca();
a.data_bounds = [-3.5, -3.5; 3.5, 3.5];
a.isoview = "on";
xgrid();
title("ROC Boundaries for Z-Transforms", "fontsize", 4);

// Draw Unit Circle (Reference)
draw_circle(1, 1, 3); // Black dashed

// Draw ROC Boundaries for (a), (b), (c)
draw_circle(1/3, 2, 1); // Blue solid for |z| = 1/3
draw_circle(2, 5, 1);   // Red solid for |z| = 2

// Draw ROC Boundaries for (d)
draw_circle(1/2, 3, 2); // Green dashed for |z| = 1/2
draw_circle(3, 7, 2);   // Yellow dashed for |z| = 3

// Add Poles for X1(z) and X2(z)
plot2d([1/3, 2], [0, 0], -2); // Cross marks for poles

// Labels
xstring(1.1, 1.1, "Unit Circle (|z|=1)");
xstring(0.4, 0.2, "|z| = 1/3");
xstring(2.1, 0.2, "|z| = 2");
xstring(3.1, 0.2, "|z| = 3");

// Notes for Sketch:
// - ROC (a) & (c): Annulus between blue and red circles (1/3 < |z| < 2)
// - ROC (b): Exterior of the red circle (|z| > 2)
// - ROC (d): Annulus between green and yellow circles (1/2 < |z| < 3)
