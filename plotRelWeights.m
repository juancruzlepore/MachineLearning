function plotRelWeights(inputWeights)
    hold on;
    plot(inputWeights(:,1)./inputWeights(:,2), inputWeights(:,2), 'o')
    for index = [14, 15, 25]
        plot(inputWeights(index,1)/inputWeights(index,2), inputWeights(index,2), 'or')
    end
    hold off;
end
