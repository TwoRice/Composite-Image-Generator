function [natural, manmade] = classifySet(imagesSrc)
images = dir(imagesSrc);
load('model', 'model');

features = [];
natural = 0;
manmade = 0;

for i = 1 : length(images)
    image = imread(strcat(images(i).folder, '\', images(i).name));    
    features = plotPoint(image, []);
    [label, ~, ~] = predict(model, features);
    if (label == 'nat')
        natural = natural + 1;
    else
        manmade = manmade + 1;
    end
end

disp(strcat('natural : ', num2str(natural)));
disp(strcat('manmade : ', num2str(manmade)));
end