function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% more traditional statistical approach
yhat = X * theta; % vector of predicted values
errors = yhat .- y;
sumSquaredErrors = errors' * errors;
J = sumSquaredErrors / (2 * m); % mean squared error

% another compact way of expressing it
% J = (((X * theta) .- y)' * ((X * theta) .- y)) ./ (2 * m);

% most verbose way of expressing it
% J = (1 / (2 * m)) * ((X * theta) - y)' * ((X * theta) - y);



% =========================================================================

end
