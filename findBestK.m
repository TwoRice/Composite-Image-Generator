best = 0;
bestK = 0;
for k = 1 : 100
    train('U:\CompVis\Images\natural_training\out_natural_1k\*.jpg', 'U:\CompVis\Images\manmade_training\out_manmade_1k\*.jpg', k, 1);
    [correct, ~] = classifySet('U:\CompVis\Images\natural_test\out_natural_1k\*.jpg');
    [~, correct2] = classifySet('U:\CompVis\Images\manmade_test\out_manmade_1k\*.jpg');
    totalCorrect = correct + correct2;
    if totalCorrect > best
        best = totalCorrect;
        bestK = k;
    end
    disp(totalCorrect);
    disp(k);
end

disp(totalCorrect);
disp(bestK);