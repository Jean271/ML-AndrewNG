function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
theta_temp=zeros(size(theta));
theta_temp(2:end,:)=theta(2:end,:);
J = 1/m*(-y'*log(sigmoid(X*theta))-((ones(size(y))-y)'*log(ones(size(y))-sigmoid(X*theta))))+...
    lambda/(2*m)*(theta_temp'*theta_temp);
grad_temp=1/m*X'*(sigmoid(X*theta)-y);
grad(1,:)= grad_temp(1,:);
grad_temp=(1/m*X'*(sigmoid(X*theta)-y))+(lambda/m)*theta;
grad(2:end,:)=grad_temp(2:end,:);
theta = theta -0.01/m*X'*(sigmoid(X*theta)-y);






% =============================================================

end
