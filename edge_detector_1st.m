function [filter_image_final] = edge_detector_1st(image)

image_bin = im2bw(image);
filter_image_horizontal = ones(size(image_bin,1), size(image_bin,2));
filter_image_final = ones(size(image_bin,1), size(image_bin,2));

for i = 1 : size(image_bin,1)-1
    for j = 1 : size(image_bin,2)-1
       filter_image_horizontal(i,j) = image_bin(i+1,j)- image_bin(i,j);
    end
end
for i = 1 : size(image_bin,1)-1
    for j = 1 : size(image_bin,2)-1
       filter_image_final(i,j) = filter_image_horizontal(i,j)- filter_image_horizontal(i,j+1);
    end
end
end