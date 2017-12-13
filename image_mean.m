function [ mean_red, mean_green, mean_blue ] = image_mean(image)
    mean_red = mean2(image(:, :, 1));
    mean_green = mean2(image(:, :, 2));
    mean_blue = mean2(image(:, :, 3));
end
