image = zeros(100);
height = size(image);
weight = size(image);

for i = 0 : height
    for j = 0 : weight
        if (i >= 20 && i <= 80 && j >= 20 && j <= 80) 
            image(i,j) = 1;
        end
    end
end

new_image = mat2gray(image);

imwrite(new_image,'rectangle.png');

% Canny_mask = [2 4 5 4 2;4 9 12 9 4;5 12 15 12 5;4 9 12 9 4;2 4 5 4 2]*(1/159);
% Sobel_Gx_mask = [-1 0 1;-2 0 2;-1 0 1];
% Sobel_Gy_mask = [1 2 1;0 0 0;-1 -2 -1];
% Robert_Gx_mask = [1 0; 0 -1];
% Robert_Gy_mask = [0 1; -1 0];
% 
% new_Robert_mask = conv2(Robert_Gx_mask,rot90(rot90(Robert_Gx_mask)));
% new_Sobel_mask = conv2(Sobel_Gx_mask,Sobel_Gy_mask);
% 
% 
% Cannied_image = conv2(Canny_mask,new_image);
% Sobeled_Gx_image = conv2(Sobel_Gx_mask,new_image);
% Sobeled_Gy_image = conv2(Sobel_Gy_mask,new_image);
% Roberted_Gx_image = conv2(Robert_Gx_mask,new_image);
% Roberted_Gy_image = conv2(Robert_Gy_mask,new_image);
% 
% 
% new_Robert_image = conv2(new_Robert_mask,new_image);
% new_Sobel_image = conv2(new_Sobel_mask,new_image);
% 
% 
% figure
% subplot(2,3,1)
% imshow(new_image)
% subplot(2,3,2)
% imshow(Sobeled_Gx_image)
% subplot(2,3,3)
% imshow(Sobeled_Gy_image)
% subplot(2,3,4)
% imshow(Roberted_Gx_image)
% subplot(2,3,5)
% imshow(Roberted_Gy_image)
% subplot(2,3,6)
% imshow(new_Robert_image)

% image = rgb2gray(imread('Lenna_(test_image).png'));
image2 = imread('rectangle.png');

new_image3 = Challenge_1_my_function(image2);

% new_Robert_image = conv2(new_Robert_mask,image);

% 
% figure
% subplot(1,2,1)
% imshow(image2)
% subplot(1,2,2)
% imshow(new_image3)

figure
imshow(new_image3)



