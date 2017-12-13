function [ features ] = plotPoint(image, features) 
    sky = detect_sky(image);
    lines = findStraightLines(image); 
    features = [features; sky, lines];
end

