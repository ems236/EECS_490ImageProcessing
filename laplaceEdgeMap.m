function edgeMap=laplaceEdgeMap(img, threshold)
    laplaceVal = laplacian3x3(img);
    %imshow(laplaceVal);
    [width, height] = size(img);
    edgeMap = img;
    for x = 1:width
        for y = 1:height
            edgeMap(x, y) = uint8(zeroCrossPositive(laplaceVal, x, y, threshold));
        end
    end

