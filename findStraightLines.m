function no_lines = findStraightLines(image)
    image = crop2square(image, 512, 0); 
    image = rgb2gray(image);
    image = imbinarize(image);
    % image = imfill(image, 'holes');
    edges = edge(image, 'log');
    [H,theta,rho] = hough(edges);
    P = houghpeaks(H,20, 'threshold',ceil(0.5*max(H(:))));
    lines = houghlines(edges, theta, rho, P,'FillGap',2,'MinLength',30);
    no_lines = length(lines);
end

