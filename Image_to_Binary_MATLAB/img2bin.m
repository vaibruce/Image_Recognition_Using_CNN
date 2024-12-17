A = imread('Your_image.bmp'); %Add your image path here

% Crop pixel values to 4 bits (i.e., only the lower 4 bits)
A = bitand(A, 15);  % 15 is 00001111 in binary, which keeps only the lower 4 bits

% Convert image data to binary with 4-bit width
binStr = dec2bin(A, 4); % Convert to binary with 4-bit width explicitly

% Write binary data to file
fname = 'D:\Image Recognition\image.txt';
fid = fopen(fname, 'w');
expr = [repmat('%c', [1 size(binStr, 2)]) '\n'];
fprintf(fid, expr, binStr.');
fclose(fid);
