function [ v, delta ] = normalValue( X, m, s )

n = length(X);
delta_square = sum ( ((X - m * ones(1,n) ) .^ 2) ./ (s * ones(1, n) ), 1);
delta = sqrt(delta_square);
v = (1 / ( (2 * pi) .^ (length(m) / 2)  * sqrt(prod(s) ) ) ) * exp(-0.5 * delta_square);


end

