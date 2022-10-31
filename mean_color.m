clc; clear; close all


I0 = imread('frame1.tif');
sumImage = double(I0);                               % Inialize to first image.
for i=2:2000                                         % Read in remaining images.
  rgbImage = (imread(['frame',num2str(i),'.tif']));
  sumImage = sumImage + double(rgbImage);
end;

meanImage = sumImage / 2000;

meanImage = imrotate(meanImage, -90);                % Rotate mean image (if required)
imwrite(uint8(meanImage), 'mean_Image.tif')

figure
imagesc(uint8(meanImage))                            % Also imshow(uint8(meanImage)) 
axis image