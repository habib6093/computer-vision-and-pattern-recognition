image1 = 'aiub3.jpg';
% image2 = 'rgb2binary2.jpg'
 
image=imread(image1);
faceDetector = vision.CascadeObjectDetector;
faceDetector.MergeThreshold=-10;

bboxes = faceDetector(image);
valued= int32(size(bboxes,1));
IFaces = insertObjectAnnotation(image,'rectangle',bboxes,'Face');   
imshow(IFaces)
text=sprintf('Detected People %d',valued);
title(text);





%detector = peopleDetectorACF;
detector =  vision.CascadeObjectDetector('UpperBody'); 
%detector.MinSize = [60 60];
%detector.MergeThreshold=10;
%[bboxes,scores] = detect(detector,image);
I = insertObjectAnnotation(image,'rectangle',bboxes,scores);
figure
imshow(I);
value=scores;
values= int32(size(scores,1));
txt=sprintf('Detected People %d',values);
title(txt);

