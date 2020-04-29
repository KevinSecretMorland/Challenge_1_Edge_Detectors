clear all

image = rgb2gray(imread('Lenna_(test_image).png'));
image_bin = im2bw(image);
filter_image_horizontal = ones(size(image_bin,1), size(image_bin,2));
filter_image_final = ones(size(image_bin,1), size(image_bin,2));

for i = 1 : size(image_bin,1)-1
    for j = 1 : size(image_bin,2)-1
       filter_image_horizontal(i,j) = image_bin(i,j)- image_bin(i,j+1);
    end
end
for i = 1 : size(image_bin,1)-1
    for j = 1 : size(image_bin,2)-1
       filter_image_final(i,j) = filter_image_horizontal(i+1,j)- filter_image_horizontal(i,j);
    end
end

% final_image = mat2gray(filter_image_final);
final_image = filter_image_final;

figure
subplot(2,2,1)
imshow(image)
subplot(2,2,2)
imshow(filter_image_horizontal)
subplot(2,2,3)
imshow(filter_image_final)
subplot(2,2,4)
imshow(final_image)