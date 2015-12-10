function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
delta1 = 0;
delta2=0;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


% Calculate sum for theta(1) and theta(2)
for i = 1:m
  delta1 = delta1 + (theta'*X(i,:)'-y(i, : ))*X(i,1);
  delta2 = delta2 + (theta'*X(i,:)'-y(i, : ))*X(i,2);
endfor

delta1= delta1*alpha/m;
delta2= delta2*alpha/m;

deltaVector = [delta1 ; delta2];

theta = theta - deltaVector;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
endfor

J_history(iter) = computeCost(X, y, theta);

end
