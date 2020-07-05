function outImg=morphologicalProcess(img, conditionalLookup, inhibitorLookup)
    binary = toBinary(img);
    
    [width, height] = size(img);
    
    marked = binary;
    for x = 1:width
        for y = 1:height
            if hitOrMiss(binary, x, y, conditionalLookup)
                marked(x, y) = 1;
            else
                marked(x, y) = 0;
            end
        end
    end
    
    outImg = binary;
    for x = 1:width
        for y = 1:height
            if marked(x, y) == 1 && ~hitOrMiss(marked, x, y, inhibitorLookup)
                outImg(x, y) = 0;
            end
        end
    end