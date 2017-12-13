function [ class ] = classifyImage( imageLoc, var1, var2 )
    image = imread(imageLoc);
    Y = [];
    X = [];

    [X, Y] = plotPoint(image, Y, X);
    if (Y < var2 * X(end) + var1)
        % natural image
        class = 0;
    else
        % manmade image
        class = 1;
    end
end

