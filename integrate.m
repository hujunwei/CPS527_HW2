function [ i ] = integrate( p, dx, dy )
[row, col] = size(p);
% if p is a vector
if (isvector(p) )
    if (~isempty(dy))
        error ('Invalid input dy');
    end
    i = (2 * sum(p, 2) - p(1) - p(col) ) * dx / 2;
% if p is matrix and dx > 0 and dy not specified, should be a column vector
elseif (ismatrix(p) && dx > 0 && isempty(dy) )
    i = (2 * sum(p, 2) - p(:, 1) - p(:, col)) * dx / 2;
% if p is matrix and dx not specified and dy > 0
elseif (ismatrix(p) && dy > 0 && isempty(dx) ) 
    i = (2 * sum(p, 1) - p(1, :) - p(row, :)) * dy / 2;    
% if p is matrix and dx and dy are positive
elseif (ismatrix(p) && dx > 0 && dy > 0 )
    p_row_vector = (2 * sum(p, 1) - p(1, :) - p(row, :)) * dy / 2; 
    i = (2 * sum(p_row_vector, 2) - p_row_vector(:, 1) - p_row_vector(:, col)) * dx / 2;
else
   error ('Invalid input');
end

end

