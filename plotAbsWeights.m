function plotAbsWeights(inputWeights)
    hold on;
    plot(inputWeights(:,1), inputWeights(:,2), 'o')
    for index = [14, 15, 25]
        plot(inputWeights(index,1), inputWeights(index,2), 'or')
    end
    plot(inputWeights(14,1), inputWeights(14,2), 'or')
    plot(inputWeights(15,1), inputWeights(15,2), 'om')
    plot(inputWeights(25,1), inputWeights(25,2), 'og')
    xlabel('Pesos de cuerpos(kg)');
    ylabel('Pesos de cerebros(g)');
    hold off;
end
