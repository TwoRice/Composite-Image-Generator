function train (naturalSrc, manmadeSrc, k, preLoad)
natural = dir(naturalSrc);
manmade = dir(manmadeSrc);

naturalSize = length(natural);
manmadeSize = length(manmade);

features = [];
labels = [];

if(preLoad == 0)
    for i = 1 : naturalSize
        image = imread(strcat(natural(i).folder, '\', natural(i).name));
        features = plotPoint(image, features);
        labels = [labels; 'nat'];
    end
    for i = 1 : manmadeSize
        image = imread(strcat(manmade(i).folder, '\', manmade(i).name));
        features = plotPoint(image, features);
        labels = [labels; 'man'];
    end
    model = fitcknn(features, labels, 'NumNeighbors', k);
    save('model', 'model');
    save('features' , 'features', 'labels');
else
    load('features', 'features', 'labels');
    model = fitcknn(features, labels, 'NumNeighbors', k);
    save('model', 'model');
end



% Find best line of seperation
% bestError = naturalSize + manmadeSize;
% var1 = 1;
% var2 = 2;
% for i = 0 : 0.05 : 20
%     for j = -10 : 0.05 : 10
%         error = 0;
% 
%         % count natural errors
%         for k = 1 : naturalSize
%             if(naturalLines(k) >= (j * naturalHues(k) + i))
%                 error = error + 1;
%             end
%         end
% 
%         % count manmade errors
%         for k = 1 : manmadeSize
%             if(manmadeLines(k) < (j * manmadeHues(k) + i))
%                 error = error + 1;
%             end
%         end
% 
%         if(error < bestError)
%             bestError = error;
%             var1 = i;
%             var2 = j;
%         end
%     end
% end
% save('seperation', 'var1', 'var2');

% scatter(manmadeHues, naturalLines,[]);
% hold on;
% scatter(naturalHues, manmadeLines,[],'d');
% hold on
% X = 0:0.1:14;
% Y = var2 * X + var1;
% plot(X, Y);
end