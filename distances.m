function [ D ] = distances( L )

for i = 1 : 10
    for j = 1 : 10
        D(i,j) = sqrt( sum( ((L.M(:, i) - L.M(:, j)) .^ 2) ./ L.S(:,j), 1) );
    end
end

end

