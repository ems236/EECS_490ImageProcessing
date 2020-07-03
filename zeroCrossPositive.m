function val=zeroCrossPositive(img, x, y, threshold)
    max = -Inf;
    min = Inf;
    for neighborX=-1:1
        for neighborY=-1:1
            pxVal = pxInBounds(img, x + neighborX, y + neighborY, 1);
            if pxVal > max
                max = pxVal;
            end
            if pxVal < min
                min = pxVal;
            end
        end
    end
    
    if max - min > threshold
        val = 0;
    else
        val = 255;
    end
    
    %val = max - min;