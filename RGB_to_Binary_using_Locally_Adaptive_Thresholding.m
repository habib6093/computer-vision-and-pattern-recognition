image1 = 'rgb2binary1.jpg';
% image2 = 'rgb2binary2.jpg'
 
image=imread(image1);

first=rgb2gray(image);
first=imbinarize(first,'adaptive','ForegroundPolarity','dark','Sensitivity',0.2);

imshowpair(first,image,'montage');





