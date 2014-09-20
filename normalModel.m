%CPS527_HW2_Q2c
function [ likelihood, prior ] = normalModel( X, L )
%calculate categorical model for prior
for lbl = 1 : 10
    mean_all(:, lbl) = mean(X(:, find(L == lbl-1)), 2);
    std_all(:, lbl) = std(X(:, find(L == lbl-1)), 1, 2);
    prior(lbl, 1) = length( find(L == lbl-1) ) / length(L);
end

likelihood.M = mean_all;
likelihood.S = std_all .^ 2;





end

