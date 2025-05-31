function enhanced_img = fft_image_enhance(image_path)
% Enhance RGB image by improving contrast and saturation using YCbCr model

% INPUT:
%   image_path  - path to the image file
% OUTPUT:
%   OUTPUT.png - Upscaled RGB image (uint8)
%   ORIGINAL vs UPSCALED.png  - comparison of origial image with output image

% Read and convert image
 img_rgb = im2double(imread(image_path));
 img_ycbcr = rgb2ycbcr(img_rgb);
 Y = img_ycbcr(:,:,1);
 Cr = img_ycbcr(:,:,2);
 Cb = img_ycbcr(:,:,3);
% --- Step 1: Contrast stretching on Y channel (luminance) ---
 Y_min = min(Y(:));
 Y_max = max(Y(:));
 Y_contrast = (Y - Y_min) / (Y_max - Y_min); % Normalize between 0 and 1
 % Apply high-frequency enhancement to Y channel only
 high_freq = high_pass_filter(Y_contrast);
 k = 0.8; % Boost factor (reduced for natural enhancement)
 Y_enhanced = Y_contrast + k * high_freq;
 Y_enhanced = min(max(Y_enhanced, 0), 1);

 % --- Step 2: Saturation boost by scaling Cr and Cb channels ---
 saturation_boost = 2; % Adjust for stronger or subtler color boost
 Cr_boosted = 0.5 + saturation_boost * (Cr - 0.5);
 Cb_boosted = 0.5 + saturation_boost * (Cb - 0.5);
% Reconstruct final YCbCr image
 img_ycbcr_enhanced = cat(3, Y_enhanced, Cr_boosted, Cb_boosted);
 enhanced_img = ycbcr2rgb(img_ycbcr_enhanced);
% Clamp values to valid range
 enhanced_img = min(max(enhanced_img, 0), 1);
% Display results
 figure;
 subplot(1,2,1); imshow(img_rgb); title('Original Image');
 subplot(1,2,2); imshow(enhanced_img); title('Upscaled Image');

 % Save output figure
 exportgraphics(gcf, 'ORIGINAL vs UPSCALED.png', 'Resolution', 300);

 % Save enhanced image
 imwrite(enhanced_img,  'OUTPUT.png');
end

function high_freq = high_pass_filter(channel)
    % FFT and shift
    F = fft2(channel);
    F_shifted = fftshift(F);

    % Gaussian high-pass filter
    [M, N] = size(F);
    [X, Y] = meshgrid(1:N, 1:M);
    D = sqrt((X - N/2).^2 + (Y - M/2).^2);
    D0 = 30; % Cutoff frequency
    H = 1 - exp(-(D.^2) / (2 * D0^2));

    % Apply filter and inverse FFT
    F_filtered = F_shifted .* H;
    high_freq = real(ifft2(ifftshift(F_filtered)));
end
