%ej 5.a
load -ascii plumas.txt;
ttest(plumas(:,2),plumas(:,3))
%ttest retorna 1, lo que significa que se rechaza la hipotesis nula. Por lo tanto, los investigadores están en lo cierto.


%boxplots (Los labels que no figuran en el comando fueron agregados mediante la interfaz grafica de matlab)
boxplot(plumas(:,[2 3]),'Labels',{'plumas típicas','plumas raras'})
%TODO: Sacar conclusiones