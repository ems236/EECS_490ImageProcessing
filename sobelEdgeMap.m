function edgeMap=sobelEdgeMap(img, thresholdRatio)
    xGrad = sobel7x7Horizontal(img);
    yGrad = sobel7x7Vertical(img);
    gradientNorm = gradientMagnitude(xGrad, yGrad);
    %imshow(uint8(gradientNorm));
    threshold = thresholdRatio * maxVal(gradientNorm);
    edgeMap = applyPredicate(gradientNorm, @(px) (px >= threshold));
