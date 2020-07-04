% EECS490 Homework Assignment #1
% June 17, 2020
% Name: Ellis Saupe
% NetworkID / email: ems236@case.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Instructions: All source images are assumed to be in a folder at the
% relative path provided.  All output images are written to the folder
% provided
% 
%  Arguments: string path to source image directory,
%  string path to output image/plot directory
% NOTE: the output directory must already exist or errors will occur.

%  run readme from the matlab terminal:
%  README '..\srcImages\' '..\outImages\'
%  
%  Note I only tried this in powershell
%  run the readme from terminal / cmd
%  matlab -r "README "..\srcImages\" "..\destImages\""
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 1.a.1: Edge Detection a
% Implementation: 3x3 or 7x7 Sobel filter with threshold relative to max gradient
% M-file name: sobelEdgeMap.m
% Usage: new_image = sobelEdgeMap(img, @sobel3x3Horizontal, @sobal3x3Vertical, threshold (relative to max gradient))
% Output image: building-sobel-edge.raw, building-sobel-edge_noise-3.raw  building-sobel-edge_noise-7.raw
function []=README(srcDir, outputDir)
disp("Running sobelEdgeMap...");
f1 = figure;
title("Sobel edge map for building.raw");
building_dark = readraw(srcDir + "building.raw");

edgeMap = sobelEdgeMap(building_dark, @sobel3x3Horizontal, @sobel3x3Vertical, 0.15);
imshow(edgeMap);

writeraw(edgeMap, outputDir + "building-sobel-edge.raw");
disp("writing to " + outputDir + "building-sobel-edge.raw");
saveas(f1, outputDir + "building-sobel-edge.png");

f2 = figure;
title("Sobel edge map for building_noise.raw");
building_noise = readraw(srcDir + "building_noise.raw");
edgeMap = sobelEdgeMap(building_noise, @sobel3x3Horizontal, @sobel3x3Vertical, 0.4);
imshow(edgeMap);

writeraw(edgeMap, outputDir + "building-sobel-edge_noise.raw");
disp("writing to " + outputDir + "building-sobel-edge_noise.raw");
saveas(f2, outputDir + "building-sobel-edge_noise.png");

f3 = figure;
title("Sobel edge map for building_noise.raw");
edgeMap = sobelEdgeMap(building_noise, @sobel7x7Horizontal, @sobel7x7Vertical, 0.2);
imshow(edgeMap);

writeraw(edgeMap, outputDir + "building-sobel-edge_noise-7.raw");
disp("writing to " + outputDir + "building-sobel-edge_noise-7.raw");
saveas(f3, outputDir + "building-sobel-edge_noise-7.png");

% Problem 1.a.2: Edge Detection b
% Implementation: 3x3 Laplacian filter with max difference threshold of 50
% M-file name: laplaceEdgeMap.m
% Usage: new_image = laplaceEdgeMap(img, threshold))
% Output image: building-laplace-edge.raw, building-laplace-edge_noise.raw
f4 = figure;
title("Laplace edge map for building_noise.raw");
edgeMap = laplaceEdgeMap(building_dark, 0.15);
imshow(edgeMap);
writeraw(edgeMap, outputDir + "building-laplace-edge.raw");
disp("writing to " + outputDir + "building-laplace-edge.raw");
saveas(f4, outputDir + "building-laplace-edge.png");

f5 = figure;
title("Laplace edge map for building_noise.raw");
edgeMap = laplaceEdgeMap(building_noise, 0.4);
imshow(edgeMap);
writeraw(edgeMap, outputDir + "building-laplace-edge_noise.raw");
disp("writing to " + outputDir + "building-laplace-edge_noise.raw");
saveas(f5, outputDir + "building-laplace-edge_noise.png");

% Problem 1.b.1: Edge Detection with preprocessing contrast
% Implementation: Histogram Equalization Contrast enhancement followed by same methods as above
% M-file name: constrastLinearScaled.m, sobelEdgeMap.m
% Usage: new_image = sobelEdgeMap(img, @sobel3x3Horizontal, @sobal3x3Vertical, threshold (relative to max gradient))
% Output image: building-contrast.raw, building-contrast-sobel.raw, building-contrast-laplace.raw,

f6 = figure;
title("building with histogram equalization contrast scaling");
building_contrast = contrastHistogramEqualized(building_dark);
imshow(building_contrast);
writeraw(building_contrast, outputDir + "building-contrast.raw");
disp("writing to " + outputDir + "building-contrast.raw");
saveas(f6, outputDir + "building-contrast.png");

f7 = figure;
title("Sobel edge map for building.raw with contrast enhancement");
edgeMap = sobelEdgeMap(building_contrast, @sobel3x3Horizontal, @sobel3x3Vertical, 0.2);
imshow(edgeMap);
name = "building-contrast-sobel";
writeraw(edgeMap, outputDir + name + ".raw");
disp("writing to " + outputDir + name + ".raw");
saveas(f7, outputDir + name + ".png");

f8 = figure;
title("Laplace edge map for building.raw with contrast enhancement");
edgeMap = laplaceEdgeMap(building_contrast, 0.25);
imshow(edgeMap);
name = "building-contrast-laplace";
writeraw(edgeMap, outputDir + name + ".raw");
disp("writing to " + outputDir + name + ".raw");
saveas(f8, outputDir + name + ".png");


% Problem 1.b.2: Edge Detection with preprocessing noise removal
% Implementation: 5x5 median filter followed by same methods as above
% M-file name: applyMedianFilter.m, sobelEdgeMap.m, laplaceEdgeMap.m
% Usage: new_image = sobelEdgeMap(img, @sobel3x3Horizontal, @sobal3x3Vertical, threshold (relative to max gradient))
% Output image: building-blur.raw, building-blur-sobel.raw, building-blur-laplace.raw,
f9 = figure;
title("Median noise removal for building_noise.raw");
building_blur = applyMedianFilter(building_noise, 5);
imshow(building_blur);
name = "building-blur";
writeraw(building_blur, outputDir + name + ".raw");
disp("writing to " + outputDir + name + ".raw");
saveas(f9, outputDir + name + ".png");

f10 = figure;
title("Sobel Edge filter for denoised building");
edgeMap = sobelEdgeMap(building_blur, @sobel3x3Horizontal, @sobel3x3Vertical, 0.2);
imshow(edgeMap);
name = "building-blur-sobel";
writeraw(edgeMap, outputDir + name + ".raw");
disp("writing to " + outputDir + name + ".raw");
saveas(f10, outputDir + name + ".png");

f11 = figure;
title("Laplace Edge filter for denoised building");
edgeMap = laplaceEdgeMap(building_blur, 0.2);
imshow(edgeMap);
name = "building-blur-laplace";
writeraw(edgeMap, outputDir + name + ".raw");
disp("writing to " + outputDir + name + ".raw");
saveas(f11, outputDir + name + ".png");



end