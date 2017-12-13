
function sky_value = detect_sky(image)
    crop_size = 512;  
    
    image = crop2square(image, crop_size, 0);
    
    % get top bit of image
    image = imcrop(image, [0, 0, crop_size, crop_size / 3]);
    
    image = rgb2gray(image);
    
    % imshow(image);
    
    % try and find gradient
    [~, Gdir] = imgradient(image, 'sobel');
    bin = imbinarize(image);
    
    fusion = imfuse(Gdir, bin);
    fusion = rgb2gray(fusion);
    
    top = imcrop(fusion, [0, 0, crop_size, (crop_size / 3) / 2]);
    bottom = imcrop(fusion, [0, (crop_size / 3) / 2, crop_size, (crop_size / 3) / 2]);
    
    %imshow(fusion);
    kernel = [-1, -1, -1, -1, 8, -1, -1, -1]/8;
    topDiff = conv2(double(top), kernel, 'same');
    topMean = mean2(topDiff);
    bottomDiff = conv2(double(bottom), kernel, 'same');
    bottomMean = mean2(bottomDiff);

    %imshowpair(diffImage, image, 'montage')
    
    
    % imshowpair(Gmag, image, 'montage')
    %temp = fusion;
    
    %temp = imfill(temp,'holes');
   %imshowpair(temp, image, 'montage')
    %imshow(temp);
    
    % calculate number of black pixels
    %black = sum(temp(:) == 0);
    % calculate number of white pixels
    %white = sum(temp(:));
    % calculate total number of pixels
    %[rows, columns, numberOfColorChannels] = size(temp);
    
    % ratio of black pixels
    %ratio = black / (rows * columns);
    
    % find out ratio: get distance from 0.5
    sky_value = abs(topMean - bottomMean); % abs(ratio - 0.5) * 2;
end