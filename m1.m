function Z = m1()
 load fisheriris;
 format long;
 NumObs = size(meas,1);
 NameObs = strcat({'Obs '},num2str((1:NumObs)','%-d'));
 iris = dataset({nominal(species),'especie'},{meas,'largo_sepalo', 'ancho_sepalo','largo_petalo','ancho_petalo'},'ObsNames',NameObs);
%  disp(iris(1:5,:));
%  summary(iris);
%  disp (iris);

training=zeros(99,4);
testing=zeros(51,4);
trainingSpecies = {''};
realSpecies= {''};
attrNum=4;
specNum=3;
testnum=33;
total=50;
trainnum=total-testnum;
%%Preparing Testing data
for i=1:1:total
    for j=1:attrNum;
        for k=0:specNum-1
            if i<=testnum
                training(i+testnum*k,j)=meas(i+total*k,j);
                trainingSpecies(i+testnum*k)=species(i+total*k);
            else
                testing(i-testnum + trainnum*k,j) = meas(i+total*k,j);
            end
        end
    end
end
%%Preparing real result data for error checking
for i=1:17
    for j=0:2
        realSpecies(i+j*trainnum)=species(i+total*j);
    end
end


NB = NaiveBayes.fit(training,trainingSpecies);
NB_Clases =NB.predict(testing);

rightCount = 0;
for i= 1:length(testing)
    disp ----------;
    disp (NB_Clases(i));
    disp(realSpecies(i));
    %disp(sprintf('%s %s',NB_Clases(i),realSpecies(i)));
    if (strcmp(NB_Clases(i),realSpecies(i)))
        rightCount=rightCount+1;
    end
end

%Wrongly classified data
errCount=51-rightCount;
Accuracy=rightCount/51;

%Matriz de Confunsion
confMat=confusionmat(realSpecies,NB_Clases);
disp (confMat);

% 3D Graph plotting
%  ptsymb = {'ro','gs','bd'};
% for i = 1:3
%  j=50*(i-1)+1:50*i;
%  plot3(meas(j,2),meas(j,3),meas(j,4),ptsymb{i});
%  hold on
% end
% hold off
% xlabel('ancho sepalo'); ylabel('largo petalo'); zlabel('ancho petalo');
% view(-137,10);
% grid on 
% 


%2D Graph plotting 
%  gscatter(iris.largo_petalo,iris.ancho_petalo,iris.especie,'rgb','osd')
% xlabel('largo petalo');
% ylabel('ancho petalo');
% title('sepalos')
hold on;
xd=[];
% for i=1:3
%     for j=1:4
%         xd=[];
%         for k=1:50
%             xd(k)=meas((i-1)*50+k,j);              
%         end
%         
%         subplot(3,8,(i-1)*4+j);
%          hist(xd);
%         subplot(3,8,(i-1)*4+j+12);
%         boxplot(xd);
%     end
% end


for start = 1:50:101
    mu = zeros(4,1);
    squared_sigma = zeros(4,1);
    for i = 1:4
        mu(i) = mean(meas(start:(start + 49),i));
        squared_sigma(i) = sum((meas(start:(start + 49),i)-mu(i)) .^ 2) / length(meas(start:(start + 49),i));
        s = std(meas(start:(start + 49),i));
        t = tinv(0.95,49);
        interval_min = mu(i) - t * s / sqrt(50)
        interval_max = mu(i) + t * s / sqrt(50)
    end
    mu;
    squared_sigma;
end

%maxima verosimilud ?
%%http://www.ub.edu/stat/GrupsInnovacio/Statmedia/demo/Temas/Capitulo7/B0C7m1t16.htm