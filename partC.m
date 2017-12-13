function composite = partC (target, naturalSrc, manmadeSrc, output_width, output_height, tile_size, display_changes)
    [nat, man] = classifySet(target);
    if (nat == 1)
        disp('Target image is Natural');
        image = imread(target);
        composite = generate_composite_image(image, dir(naturalSrc), output_width ,output_height, tile_size, display_changes);
    else
        disp('Target image is Manmade');
        image = imread(target);
        composite = generate_composite_image(image, dir(manmadeSrc), output_width ,output_height, tile_size, display_changes);
    end
end