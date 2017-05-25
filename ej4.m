%ej 4.a y 4.b
x = [ones(1,26) zeros(1,174)];
[h,p] = ttest(x,0.1,'Tail','right')
% h = 0 -> No hay aumento en la preferencia
% p = 0.1049

%ej 4.c
pwrout = sampsizepwr('p',0.1,0.15,[],200,'Tail','right');
beta = 1-pwrout
%beta = prob de cometer error tipo II = 0.3166

%ej 4.d

nout = sampsizepwr('p',0.1,0.15,0.95,[],'Tail','right')

%el tama?o de la muestra deberia ser 474 para que la probabilidad de
%cometer error tipo II sea menor a 0.05
