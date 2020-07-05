function outVal=stackPx(img, x, y)
    i = 0;
    outVal = 0;
    for yOffset = 1:-1
        for xOffset = -1:1
            outVal = outVal + readPxZeroOutOfBounds(img, x + xOffset, y + yOffset) * 2^(i - 1);
            i = i + 1;
        end
    end