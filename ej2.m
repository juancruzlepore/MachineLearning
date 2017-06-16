load fisheriris;
format long;
amount = 50;
alpha = 1 - 0.95;
for start = 1:amount:101
    mu = zeros(4,1);
    squared_sigma = zeros(4,1);
    resp = zeros(4,5);
    for i = 1:4
        mu(i) = mean(meas(start:(start + amount - 1),i));
        squared_sigma(i) = sum((meas(start:(start + amount - 1),i)-mu(i)) .^ 2) / length(meas(start:(start + amount - 1),i));
        resp(i,1) = mu(i);
        resp(i,2) = squared_sigma(i);
        resp(i,3) = squared_sigma(i) / amount;
        s = std(meas(start:(start + amount - 1),i));
        t = tinv(1 - alpha / 2,amount - 1);
        interval_min = mu(i) - t * s / sqrt(amount);
        interval_max = mu(i) + t * s / sqrt(amount);
        resp(i,4) = interval_min;
        resp(i,5) = interval_max;
    end
    mu;
    squared_sigma;
    ecm = squared_sigma / amount;
    round(resp, 5)
end