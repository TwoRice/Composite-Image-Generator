function [ tiles, tile_x_total, tile_y_total ] = subdivide(image, tile_size)
    tiles = [];
    % get size of image
    [ image_width, image_height, image_page ] = size(image);
    % get number of tiles along the x and y axis
    tile_x_total = (image_width / tile_size);
    tile_y_total = (image_height / tile_size);
    
    % loop over the possible tiles and crop accordingly
    for tile_x = 0:tile_x_total - 1
        for tile_y = 0:tile_y_total - 1
            y = tile_x * tile_size;
            x = tile_y * tile_size;
            t = imcrop(image, [ x, y, tile_size, tile_size ]);
            % solves tile crop rounding issues
            t = imcrop(t, [ 0, 0, tile_size, tile_size ]);
            tiles{tile_x + 1, tile_y + 1} = t;
        end
    end
end
