function [ label ] = classify( img, likelihood, prior )

cimg = code(img);
for i = 1 : length(prior)
    [ v, delta ] = normalValue( cimg, likelihood.M(:,i), likelihood.S(:,i) );
    likelihoodForAllDigits(i, :) = v(1, :);
end

posteriorForAllDigits = likelihoodForAllDigits .* ( (prior) * ones(1, length(img)) );

for i = 1 : length(img)
    label(1,i) = find(posteriorForAllDigits(:,i) == max(posteriorForAllDigits(:,i)) ) - 1;
end

end