function hueDeviation = findSegmentedHueDeviation(image)
    image = crop2square(image, 512, 0); 
    ft = fft(image);
    mat = min(min(ft));
    item = mat(:,:,3);
    hueDeviation = item;
end