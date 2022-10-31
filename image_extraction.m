clc; clear; close all;

Video_data = VideoReader('./DSC_0718.MOV');
get(Video_data)
for img = 1:Video_data.NumberOfFrames
    filename = strcat('frame',num2str(img),'.tif');
    VidFrames = read(Video_data, img);
    imwrite(VidFrames, filename);
end
