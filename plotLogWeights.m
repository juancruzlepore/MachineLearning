function plotLogWeights(inputWeights)
    hold on;
    plot(arrayfun(@log, inputWeights(:,1)), arrayfun(@log, inputWeights(:,2)), 'o')
%     for index = [14, 15, 25]
%         plot(log(inputWeights(index,1)), log(inputWeights(index,2)), 'or')
%     end
%     
    plot(log(inputWeights(14,1)), log(inputWeights(14,2)), 'or')
    plot(log(inputWeights(15,1)), log(inputWeights(15,2)), 'om')
    plot(log(inputWeights(25,1)), log(inputWeights(25,2)), 'og')
    xlabel('Log(Pesos de cuerpos(kg))');
    ylabel('Log(Pesos de cerebros(g))');
    hold off;
end
