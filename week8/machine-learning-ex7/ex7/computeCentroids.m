function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
% matrix of new cen
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% count the points assigned to each centroid;
% total up the values of the points assigned to each centroid
centroids_count = zeros(K,1);
centroids_total = zeros(K,n);
for i=1:m,
  % increment centroid count for data point
  centroids_count(idx(i)) += 1;
  % add data point values to running totals for centroid
  centroids_total(idx(i),:) += X(i,:);
endfor;

% divide running totals by counts to get mean values (new centroids)
for i=1:K,
  % avoid divide by zero warning this way
  if centroids_count(i) > 0,
	  centroids(i,:) = centroids_total(i,:) / centroids_count(i);
  endif;
end;




% =============================================================


end

