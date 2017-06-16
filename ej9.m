load hald;
whos;
mat = corrcoef(hald);

[b,se,pval,inmodel,stats,nextstep,history]=stepwisefit(ingredients,heat);

[coeff,score,latent] = princomp(ingredients); 
% disp(coeff);
% disp(score);
% disp(latent);
% latent
varComp =cumsum(latent)./sum(latent) ;
% varComp
 biplot(coeff(:,[1,2]),'score',score(:,[1,2]),'varlabels',{'tricalcium aluminate','tricalcium silicate', 'tetracalcium aluminoferrite','beta-dicalcium silicate'});
inmodel

%Calculo del termino independiente del modelo
mean(hald(:,5) - hald(:,1)* 1.439958284998877 + hald(:,4)* 0.613953628004263)

mat