function [filter_image_final] = edge_detector_2nd(image)

image_bin = im2bw(image);
filter_image_horizontal = ones(size(image_bin,1), size(image_bin,2));
filter_image_final = ones(size(image_bin,1), size(image_bin,2));
% filter_image = ones(size(image_bin,1), size(image_bin,2));

for i = 1 : size(image_bin,1)-1
    for j = 1 : size(image_bin,2)-1
        if (i > 1 && j > 1)
            filter_image_horizontal(i,j) = image_bin(i,j+1)+ image_bin(i,j-1)-2*image_bin(i,j);
        end
    end
end
for i = 1 : size(image_bin,1)-1
    for j = 1 : size(image_bin,2)-1
        if (i > 1 && j > 1)
            filter_image_final(i,j) = filter_image_horizontal(i+1,j) + filter_image_horizontal(i-1,j) - 2*filter_image_horizontal(i,j);
        end
    end
end
end