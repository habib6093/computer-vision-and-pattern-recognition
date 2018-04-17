%% Find Corresponding Points Using SURF Features 
% Use the SURF local feature detector function to find the corresponding points between two images that are rotated and
% scaled with respect to each other. 
%% 
% Read the two images.
I1 = imread('cameraman.tif');
I2 = rgb2gray(imread('show.jpg')); %imresize(imrotate(I1,-20),1.2);
I1 = I2;
I2 = imresize(imrotate(I2,90),.20);

%%
% Find the SURF features.
points1 = detectSURFFeatures(I1);
points2 = detectSURFFeatures(I2); 
%% 
% Extract the features.
[f1,vpts1] = extractFeatures(I1,points1);
[f2,vpts2] = extractFeatures(I2,points2);
%% 
% Retrieve the locations of matched points.
indexPairs = matchFeatures(f1,f2) ;
matchedPoints1 = vpts1(indexPairs(:,1));
matchedPoints2 = vpts2(indexPairs(:,2));
%% 
% Display the matching points. The data still includes several outliers, but  you can see the effects of rotation and scaling on the display of matched features.
figure; showMatchedFeatures(I1,I2,matchedPoints1,matchedPoints2);
legend('matched points 1','matched points 2');
%imshowpair(I1,I2,'montage');
