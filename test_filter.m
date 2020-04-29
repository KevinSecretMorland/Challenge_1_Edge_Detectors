clear all

image = rgb2gray(imread('Lenna_(test_image).png')); %Original image
gaussian = imnoise(image,'gaussian');
poisson = imnoise(image,'poisson');
SP = imnoise(image,'salt & pepper');

nb_ite = 4; %Number of results
rho_interval = 4;
rho = 1; %Value of the standard deviation
x = 25; %Horizontal scale of the mask
y = 25; %Vertical scale of the mask

%The value of rho don't have to exceed the scale of x and y

challenge_image_1 = Challenge_1_my_function(image);
challenge_image_2 = Challenge_1_my_function(gaussian);
challenge_image_3 = Challenge_1_my_function(poisson);
challenge_image_4 = Challenge_1_my_function(SP);

edge_1st_1 = edge_detector_1st(image);
edge_1st_2 = edge_detector_1st(gaussian);
edge_1st_3 = edge_detector_1st(poisson);
edge_1st_4 = edge_detector_1st(SP);

edge_2nd_1 = edge_detector_2nd(image);
edge_2nd_2 = edge_detector_2nd(gaussian);
edge_2nd_3 = edge_detector_2nd(poisson);
edge_2nd_4 = edge_detector_2nd(SP);



[result1, image_log_filtered1] = Log_filter(image,rho,rho_interval,x,y,nb_ite);
[result2, image_log_filtered2] = Log_filter(gaussian,rho,rho_interval,x,y,nb_ite);
[result3, image_log_filtered3] = Log_filter(poisson,rho,rho_interval,x,y,nb_ite);
[result4, image_log_filtered4] = Log_filter(SP,rho,rho_interval,x,y,nb_ite);

figure
subplot(1,4,1)
imshow(challenge_image_1)
subplot(1,4,2)
imshow(challenge_image_3)
subplot(1,4,3)
imshow(challenge_image_2)
subplot(1,4,4)
imshow(challenge_image_4)

figure
subplot(1,4,1)
imshow(edge_1st_1)
subplot(1,4,2)
imshow(edge_1st_3)
subplot(1,4,3)
imshow(edge_1st_2)
subplot(1,4,4)
imshow(edge_1st_4)

figure
subplot(1,4,1)
imshow(edge_2nd_1)
subplot(1,4,2)
imshow(edge_2nd_3)
subplot(1,4,3)
imshow(edge_2nd_2)
subplot(1,4,4)
imshow(edge_2nd_4)


figure
subplot(1,nb_ite,1)
imshow(result1{3})
subplot(1,nb_ite,2)
imshow(result3{3})
subplot(1,nb_ite,3)
imshow(result2{3})
subplot(1,nb_ite,4)
imshow(result4{3})


% figure
% subplot(1,4,1)
% imshow(image,[])
% subplot(1,4,2)
% imshow(poisson,[])
% subplot(1,4,3)
% imshow(gaussian,[])
% subplot(1,4,4)
% imshow(SP,[])
