function [result,final_image] = Log_filter(image,rho,x,y,nb_ite)

final_image = {};
result = {};

for k = 2 : nb_ite

    for i = 1 : x
        for j = 1 : y
            filter_image(i,j) = -((1/(rho^2))*(1-((i^2) + (j^2))/(2*(rho^2))).*exp(-(((i^2) + (j^2))/(2*(rho^2)))));
        end
    end

final_image{k} = conv2(filter_image,image);
final_image{k} = mat2gray(final_image{k});
result{k} = edge(final_image{k},'zerocross');

% x = x+6;
% y = y+6;
rho = rho + 4;
end

end

