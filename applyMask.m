function imgCopy=applyMask(img, mask, coefficient)
    [width, height, cols] = size(img);
    
    imgCopy = img;
    for color = 1:cols
        for x = 1:width
            for y = 1:height
                imgCopy(x, y, color) = uint8(applyMaskToPx(img, x, y, color, mask, coefficient));
            end
        end
    end