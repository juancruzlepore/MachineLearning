weights = importdata('brain.dat');
format long;
plotLogWeights(weights)
logWeights = arrayfun(@log, weights);
aux = [ones(length(logWeights(:,1)),1) logWeights(:,1)];
b = aux\logWeights(:,2);
linearR = aux * b;
mdl = fitlm(logWeights(:,1),logWeights(:,2));
hold on
plot(mdl)
Rsquared = mdl.Rsquared.Ordinary
% plot(logWeights(:,1), linearR)
y = logWeights;
y([14, 15, 25], :) = [];
mdl = fitlm(y(:,1),y(:,2));
Rsquared = mdl.Rsquared.Ordinary
