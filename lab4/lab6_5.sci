atomsLoad("IPCV");

// Target image 
img = imread("C:\Users\pc\Downloads\download.jpg"); 
logo = imread("C:\Users\pc\Downloads\vuowjng.jpg");

img_gray = rgb2gray(img);

// --- Manipulation 1: Histogram Display (Robust Method) ---
figure(1);
clf();
[counts, bins] = imhist(img_gray);
plot2d3('gnn', bins, counts);
title("Histogram of Original Grayscale Image");
// --- Manipulation 2: Histogram Equalization ---
figure(2);
img_eq = imhistequal(img_gray); 
imshow(img_eq);
title("Histogram Equalized Image");

// --- Manipulation 3: Blur (Image Smoothing) ---
h = fspecial('average', 5);
img_blur = imfilter(img, h);

figure(3);
imshow(img_blur);
title("Blurred Image (5x5 Average Filter)");

// --- Manipulation 4: Watermarking (Alpha Blending) ---
logo_resized = imresize(logo, [size(img, 1), size(img, 2)]);


alpha = 0.3;
img_watermarked = uint8((1 - alpha) * double(img) + alpha * double(logo_resized));

figure(4);
imshow(img_watermarked);
title("Watermarked Image");
