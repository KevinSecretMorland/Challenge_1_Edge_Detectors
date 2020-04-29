function [result,final_image] = Log_filter(image,rho,rho_interval,x,y,nb_ite)

final_image = {};
result = {};

for k = 1 : nb_ite

    for i = 1 : x
        for j = 1 : y
            filter_image(i,j) = -((1/(rho^2))*(1-((i^2) + (j^2))/(2*(rho^2))).*exp(-(((i^2) + (j^2))/(2*(rho^2)))));
        end
    end

final_image{k} = conv2(filter_image,image);
final_image{k} = mat2gray(final_image{k});
result{k} = edge(final_image{k},'zerocross');
% result{k} = 1-result{k};


% x = x+6;
% y = y+6;
rho = rho + rho_interval;
end

end

