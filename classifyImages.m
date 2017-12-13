function [natural, manmade] = classifySet(imagesSrc)
images = dir(imagesSrc);
load('seperation', 'var');

Y = [];
natural = 0;
manmade = 0;

for i = 1 : length(images)
    image = imread(strcat(images(i).folder, '\', images(i).name));
    if (classifyImage(image, var) == 0)
        natural = natural + 1;
    else
        manmade = manamde + 1;
    end
end

disp(strcat('natural : ', num2str(natural)));
disp(strcat('manmade : ', num2str(manmade)));
end