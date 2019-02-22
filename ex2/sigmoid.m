function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

size_z=size(z);
temp_1 = ones(size_z)+exp(-z);
for i = 1:size_z(1)
    for j = 1:size_z(2)
        g(i,j)= g(i,j)+1/temp_1(i,j);
    end
end
% =============================================================

end
