function p9 ()
load hald;
whos;
mat = corrcoef(hald);
% inmodel = sequeltialfs(fun,hald,heat);

[coeff,score,latent] = princomp(hald); 
% disp(coeff);
% disp(score);
% disp(latent);

varComp =cumsum(latent)./sum(latent) ;



varComp

disp asd;
disp(u(:,1));
disp asd;
disp (latent)
disp(s)
