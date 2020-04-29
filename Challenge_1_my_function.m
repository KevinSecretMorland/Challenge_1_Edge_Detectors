function [new_image3] = Challenge_1_my_function(image)

new_image_bin = im2bw(image);
new_image2 = ones(size(new_image_bin,1), size(new_image_bin,2));
use_image = new_image_bin;
for i = 1 : size(use_image,1)-1
    for j = 1 : size(use_image,2)-1
        if (use_image(i,j) ~= use_image(i+1,j) || use_image(i,j) ~= use_image(i,j+1))
            new_image2(i,j) = 0;
        end
    end
end

new_image3 = mat2gray(new_image2);