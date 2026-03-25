// 1. Generate 440 Hz Sine wave for 2 seconds
fs = 44100;           // Sampling Frequency (Hz)
t = 0:1/fs:2;         // Time vector
f = 440;              // Audio frequency (Hz)
x = 0.5 * sin(2 * %pi * f * t); 

// 2. Write to WAV file
wavwrite(x, fs, "sin440.wav");

// 3. Zoom into a segment (5ms to 20ms) to see the waves
start_time = 0.005;
end_time = 0.02;
start_idx = int(start_time * fs) + 1;
end_idx = int(end_time * fs);

t_zoom = t(start_idx:end_idx);
x_zoom = x(start_idx:end_idx);

// 4. Visualization
scf(0);
plot(t_zoom, x_zoom);
xtitle("Zoomed Sine Wave Signal (440Hz)", "Time (s)", "Amplitude");
