function composite_image = generate_composite_image(target_image, composition_images, target_width, target_height, tile_size, display_changes) 
    % resize image to desired dimensions
    target_image = imgaussfilt(target_image, 2);
    target_image = imresize(target_image, [ target_height, target_width ]);
    
    [ tiles, tile_x_total, tile_y_total ] = subdivide(target_image, tile_size);
    
    % initialise temporary values needed to determine tiles
    composite_image = [];
    colour_distance = [];
    mean_val = [];
    
    if display_changes == 1
        figure
    end
    
    for x = 1:tile_x_total
        for y = 1:tile_y_total
            composite_image{x, y} = zeros(tile_size, tile_size, 3, 'uint8');
            mean_val{x, y} = zeros(1, 1, 1, 'double');
            colour_distance{x, y} = 1000;
        end
    end 
    
    for image_index = 1:length(composition_images)        
        % load image
        image = imread(strcat(composition_images(image_index).folder, '\', composition_images(image_index).name));
        image = crop2square(image, tile_size, 2);
        
        [ current_mean_red, current_mean_green, current_mean_blue ] = image_mean(image);
        % compare it against each tile in the target image
        for x = 1:tile_x_total
            for y = 1:tile_y_total
                temp = tiles{x, y};
                
                % precalculate mean of the tile: improves speed
                if mean_val{x, y}(1) == 0
                    [ temp_mean_red, temp_mean_green, temp_mean_blue ] = image_mean(temp);
                    mean_val{x, y} = [ temp_mean_red, temp_mean_green, temp_mean_blue ];
                else                    
                    temp_mean_red = mean_val{x, y}(1);
                    temp_mean_green = mean_val{x, y}(2);
                    temp_mean_blue = mean_val{x, y}(3);                    
                end
                
                [ delta_red, delta_green, delta_blue ] = mean_delta(current_mean_red, current_mean_green, current_mean_blue, temp_mean_red, temp_mean_green, temp_mean_blue);
                
                threshold = (delta_red + delta_green + delta_blue) / 3;
                if colour_distance{x, y} > threshold
                    composite_image{x, y} = image;
                    colour_distance{x, y} = threshold;
                end
            end
        end
        
        if display_changes == 1
            imshow(cell2mat(composite_image));
        end
    end
    composite_image = cell2mat(composite_image);
end
