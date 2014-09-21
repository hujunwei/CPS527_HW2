function [ E, errorRate, pCgT ] = errorStats( computedLabel, trueLabel )

E = zeros(10, 10);
errorRateCount = 0;
for i = 1 : length(computedLabel)
    
        E(trueLabel(i)+1, computedLabel(i)+1) = E(trueLabel(i)+1, computedLabel(i)+1) + 1;
        if (computedLabel(i) ~= trueLabel(i) )
        errorRateCount = errorRateCount + 1;
        end
end



errorRate = errorRateCount / length(computedLabel);

total = sum(sum(E, 2));
pCgT = (E / total)  ./ (sum(E / total, 2) * ones(1, 10));




end

