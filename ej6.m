weights = importdata('brain.dat');
format long;
plotLogWeights(weights)
logWeights = arrayfun(@log, weights);
aux = [ones(length(logWeights(:,1)),1) logWeights(:,1)];
b = aux\logWeights(:,2);
linearR = aux * b;
mdl1 = fitlm(logWeights(:,1),logWeights(:,2));
hold on
Rsquared = mdl1.Rsquared.Ordinary
% plot(logWeights(:,1), linearR)
y = logWeights;
y([14, 15, 25], :) = [];
mdl2 = fitlm(y(:,1),y(:,2));
Rsquared = mdl2.Rsquared.Ordinary
          
plot(mdl2)  