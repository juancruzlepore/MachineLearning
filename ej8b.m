load fisheriris;
means = zeros(3,4);
for i = 1:3
    for j = 1:4
        means(i,j) = mean(meas(1 + 50 * (i - 1):50 * i,j));
    end
end
round(means,4)

cov_setosa = cov(meas((1:50),:),1)
cov_versicolor = cov(meas((51:100),:),1)
cov_virginica = cov(meas((101:150),:),1)
