function val=zeroCrossPositive(img, x, y)
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
    
    val = max - min;