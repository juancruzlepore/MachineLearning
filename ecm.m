function resp = ecm(vector, estimador)
%     vector_mean = mean(vector);
    acu = 0;
    for i = 1:length(vector)
        acu = acu + (vector(i) - estimador ) ^ 2;
    end
    resp = acu / length(vector);
end
