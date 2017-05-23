function plotLogWeights(inputWeights)
    hold on;
    plot(arrayfun(@log, inputWeights(:,1)), arrayfun(@log, inputWeights(:,2)), 'o')
    for index = [14, 15, 25]
        plot(log(inputWeights(index,1)), log(inputWeights(index,2)), 'or')
    end
    hold off;
end
