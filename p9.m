load hald;
whos;
mat = corrcoef(ingredients);

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