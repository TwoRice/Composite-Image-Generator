function [ delta_red, delta_green, delta_blue ] = mean_delta(mean_red_1, mean_green_1, mean_blue_1, mean_red_2, mean_green_2, mean_blue_2)
    delta_red = abs(double(mean_red_1) - double(mean_red_2));
    delta_green = abs(double(mean_green_1) - double(mean_green_2));
    delta_blue = abs(double(mean_blue_1) - double(mean_blue_2));
end
