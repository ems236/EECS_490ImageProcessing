function outImg=morphologicalProcess(img, conditionalLookup, inhibitorLookup)
    binary = toBinary(img);
    
    [width, height] = size(img);
    
    outImg = binary;
    shouldContinue = true;
    while shouldContinue
        shouldContinue = false;
        marked = zeros(width, height);
        for x = 1:width
            for y = 1:height
                if hitOrMiss(outImg, x, y, conditionalLookup)
                    marked(x, y) = 1;
                else
                    marked(x, y) = 0;
                end
            end
        end
        
        for x = 1:width
            for y = 1:height
                if marked(x, y) == 1 && ~hitOrMiss(marked, x, y, inhibitorLookup)
                    outImg(y, x) = 0;
                    shouldContinue = true;
                end
            end
        end
    end
    
    outImg = fromBinary(outImg);