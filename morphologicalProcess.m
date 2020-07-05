function outImg=morphologicalProcess(img, conditionalLookup, inhibitorLookup)
    binary = toBinary(img);
    %disp(binary);
    [width, height] = size(img);
    
    outImg = binary;
    shouldContinue = true;
    while shouldContinue
        shouldContinue = false;
        marked = zeros(width, height);
        for x = 1:width
            for y = 1:height
                if hitOrMiss(outImg, x, y, conditionalLookup)
                    marked(y, x) = 1;
                else
                    marked(y, x) = 0;
                end
                %if x == 5 && y == 3
                %    hitOrMiss(outImg, x, y, conditionalLookup);
                %    stackPx(outImg, x, y);
                %end
            end
        end
        %disp(uint8(marked));
        for x = 1:width
            for y = 1:height
                if marked(y, x) == 1 && ~hitOrMiss(marked, x, y, inhibitorLookup)
                    outImg(y, x) = 0;
                    shouldContinue = true;
                end
            end
        end
        %disp(outImg);
        %imshow(fromBinary(outImg));
    end
    
    outImg = fromBinary(outImg);