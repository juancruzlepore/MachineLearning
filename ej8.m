load fisheriris;
NumObs = size(meas,1);
NameObs = strcat({'Obs '},num2str((1:NumObs)','%-d'));

covariance = cov(meas);
