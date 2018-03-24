image=imread('image.jpg');

first=rgb2gray(image);
first=imbinarize(first,'adaptive','ForegroundPolarity','dark','Sensitivity',0.2);

imshowpair(first,image,'montage');

