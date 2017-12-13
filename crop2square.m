function [ cropped ] = crop2square( image, height, filter )
    [image_width, image_height, ~] = size(image);
    crop_x = 0;
    crop_y = 0;
   
    % check image ratio and determine where to crop accordingly
    if image_width < image_height
        crop_size = image_height;
        crop_x = (image_width / 2) - (image_height / 2);
    else
        crop_size = image_width;
        crop_y = (image_height / 2) - (image_width / 2);        
    end
       
    % crop image
    image = imcrop(image, [ crop_x, crop_y, crop_size, crop_size ]);
   
    if filter > 0
        % blur
        image = imgaussfilt(image, filter);
    end
    
    % resize to x by x (make square)
    cropped = imresize(image, [ height, height ]);
end

