function g = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z
%   g = SIGMOIDGRADIENT(z) computes the gradient of the sigmoid function
%   evaluated at z. This should work regardless if z is a matrix or a
%   vector. In particular, if z is a vector or matrix, you should return
%   the gradient for each element.

g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the gradient of the sigmoid function evaluated at
%               each value of z (z can be a matrix, vector or scalar).

% Unit tests
%sigmoidGradient(-10)
%ans =    4.5396e-05
%sigmoidGradient(0)
%ans =  0.25000
%sigmoidGradient(10)
%ans =    4.5396e-05
%x = [-100 -10 0 10 100]
%x =
%
%  -100   -10     0    10   100
%
%sigmoidGradient(x)
%ans =
%
%   0.00000   0.00005   0.25000   0.00005   0.00000
%
%sigmoidGradient(x')
%ans =
%
%   0.00000
%   0.00005
%   0.25000
%   0.00005
%   0.00000

% normal sigmoid function
g = 1.0 ./ (1.0 + exp(-z));
% sigmoid gradient function 
g = g .* (1 .- g);











% =============================================================




end
