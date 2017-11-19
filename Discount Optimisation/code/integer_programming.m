%% Codes for Reactivation Rate Maximization problem

clear all; clc

load('y_logistic_predict.mat')
non_zero = find(y_logistic_predict==1);

%% Problem definition
n = 2*3*length(non_zero); % number of decision variables 
B = 100000;

f_temp = [-0.06; -0.09; -0.15; 2000; 3000; 4000];
f = [];
for i = 1 : n/6
    f = [f; f_temp];
end

intcon = [1:n];

Aeq_temp = [ 1, 1, 1, 0, 0, 0; 0, 0, 0, 1, 1, 1];
Aeq = zeros(n/3,n);

for i = 1 : n/6   
    Aeq(2*i-1:2*i,6*(i-1)+1:6*(i-1)+6) = Aeq_temp;
end
beq  = ones(n/3,1);

A_temp = [20, 30, 50, 0, 0, 0];
A = [];
for i = 1 : n/6    
    A = [A A_temp];
end

LB = zeros(n,1);
UB = ones(n,1);

%% Solve the mixed integer 
x = intlinprog(f,intcon,A,B,Aeq,beq,LB,UB);

%% Voucher strategy

voucher_temp = zeros(n/6,2);
voucher_strategy = zeros(length(y_logistic_predict),2);

for i = 1 : n/6
    voucher_temp(i,1) = 20*x(3*(i-1)+1) + 30*x(3*(i-1)+2) + 50*x(3*(i-1)+3);
    voucher_temp(i,2) = 1000000*x(3*(i-1)+4) + 1500000*x(3*(i-1)+5) + 2000000*x(3*(i-1)+6);
end

j = 1;
for i = 1 : length(y_logistic_predict)
    if y_logistic_predict(i) == 1
        voucher_strategy(i,:) = voucher_temp(j,:);
        j = j + 1;
    else
        voucher_strategy(i,:) = [0 0];
    end
end

csvwrite('voucher_strategy.csv',voucher_strategy);
type voucher_strategy.csv;
