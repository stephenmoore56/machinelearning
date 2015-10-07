function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% abbreviated / simplified form of cost function
% note that (theta' * X')' = ((X * theta)')' = X * theta
% theorem says (A' * B') = (BA)'
% J = sum(((X * theta) - y) .^ 2) / (2 * m);
J = ((X * theta) - y)' * ((X * theta) - y) / (2 * m);

% another way of thinking about it, more traditional statistical
% approach
yhat = X * theta; % yhat is vector of predicted values
errors = yhat .- y; % predicted minus actual values of response variable
sumSquaredErrors = errors' * errors; % sum() not necessary this way
meanSquaredError = sumSquaredErrors / (2 * m); % not sure why 2m
% J = meanSquaredError;

% more verbose form
% J = (1 / (2 * m)) * sum(((theta' * X')' - y) .^ 2);



% =========================================================================

end
