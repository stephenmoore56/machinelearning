function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% traditional statistical approach; MSE
yhat = X * theta; % vector of predicted values
errors = yhat .- y;
sumSquaredErrors = errors' * errors;
J = sumSquaredErrors / (2 * m); % mean squared error without regularization

% make a version of theta with theta(1) set to zero; add sum of theta_reg squared to J
% to obtain regularized cost function
theta_reg = theta; theta_reg(1) = 0;
J = J + (lambda * sum(theta_reg' * theta_reg) / (2 * m));

% gradient; theta_reg has zero in element 1 for theta0, which zeroes out regularization
% term for x0 = 1
grad = (1 / m) * ((yhat .- y)' * X)' + ((lambda/m)*theta_reg);








% =========================================================================

grad = grad(:);

end
