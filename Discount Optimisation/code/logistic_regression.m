%% Logistic regression for voucher usage

%% Initialization
clear; close all; clc

tic;
load('x_logistic.mat');
load('y_logistic.mat');

%% Handle data imbalance
y_one_index = find(y_logistic==1);
x_1 = x_logistic(y_one_index,:);
y_1 = y_logistic(y_one_index);

y_zero_index = find(y_logistic==0);
y_zero_index_sample = datasample(y_zero_index,2*length(y_one_index));
x_2 = x_logistic(y_zero_index_sample,:);
y_2 = y_logistic(y_zero_index_sample);

X = [x_1; x_2];
y = [y_1; y_2];

%% ============ Part 1: Compute Cost and Gradient ============
%  In this part, we will implement the cost and gradient
%  for logistic regression.

%  Setup the data matrix appropriately, and add ones for the intercept term
[m, n] = size(X);

% Add intercept term to x and X_test
X = [ones(m, 1) X];

% Initialize fitting parameters
initial_theta = zeros(n + 1, 1);

% Compute and display initial cost and gradient
[cost, grad] = costFunction(initial_theta, X, y);

% fprintf('Cost at initial theta (zeros): %f\n', cost);
% fprintf(' %f \n', grad);

%% ============= Part 2: Optimizing using fminunc  =============
%  In this part, we will use a built-in function (fminunc) to find the
%  optimal parameters theta.

%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost 
[theta, cost] = ...
	fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);

% Print theta to screen
fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);


%% ============== Part 3: Predict and Accuracies ==============

% Test accuracy 

count = 0;
for i = 1 : length(X)
    temp = logistic_predict(theta, X(i,:));
    if temp == y(i)
        count = count + 1;
    end
end
acc = count/length(X);
disp(acc)

%  After learning the parameters, we use it to predict the outcomes
%  on unseen data. Furthermore, we will prepare the prediction data for neural network

load('x_logistic_predict.mat');
X_predict = x_logistic_predict;
[a, b] = size(X_predict);

p = zeros(a,2);
x_nn_predict = zeros(a,b+2);
y_logistic_predict = zeros(a,1);
for i = 1 : a
    temp = logistic_predict(theta, [1 X_predict(i,:)]);
    if temp == 1
        p(i,:) = [1 0];
        y_logistic_predict(i) = temp;
        x_nn_predict(i,:) = [X_predict(i,:), p(i,:)];
    else
        p(i,:) = [0 1];
        y_logistic_predict(i) = temp;
        x_nn_predict(i,:) = [X_predict(i,:), p(i,:)];
    end
end
csvwrite('y_logistic_predict.csv',y_logistic_predict);
type y_logistic_predict.csv;

save('y_logistic_predict.mat','y_logistic_predict')
save('x_nn_predict.mat','x_nn_predict')
toc;
