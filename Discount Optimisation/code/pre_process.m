%% Feature selection (data preprocessing) for logistic regseeion and neural network
clear; close all; clc

%% Feature for promotion type
[~,~,dis] = xlsread('raw-data.csv', 'D:D');
dis_new = dis(2:end);
dis_f = zeros(length(dis_new),3);
for i = 1 : length(dis_new)
    temp = cell2mat(dis_new(i));
    if temp == 20
        dis_f(i,:) = [1 0 0];
    elseif temp == 30
        dis_f(i,:) = [0 1 0];
    else
        dis_f(i,:) = [0 0 1];
    end
end

%% Feature for max_value
[~,~,max_v] = xlsread('raw-data.csv', 'E:E');
max_v_new = max_v(2:end);
max_v_f = zeros(length(max_v_new),3);
for i = 1 : length(max_v_new)
    temp = cell2mat(max_v_new(i));
    if temp == 1000000
        max_v_f(i,:) = [1 0 0];
    elseif temp == 1500000
        max_v_f(i,:) = [0 1 0];
    else
        max_v_f(i,:) = [0 0 1];
    end
end

%% Feature for activeness
[~,~,b] = xlsread('raw-data.csv', 'K:K');
b_new = b(2:end);
b_f = zeros(length(b_new),2);
for i = 1 : length(b_new)
    temp = cell2mat(b_new(i));
    if temp <= 23
        b_f(i,:) = [1 0];
    else
        b_f(i,:) = [0 1];
    end
end

%% Feature for money spent 
[~,~,w] = xlsread('raw-data.csv', 'J:J');
w_new = w(2:end);
w_f = zeros(length(w_new),3);
for i = 1 : length(w_new)
    temp = cell2mat(w_new(i));
    if temp == '\t'
        w_f(i,:) = [0 0 1];
    elseif temp >= 6 * 10^7
        w_f(i,:) = [0 1 0];
    else
        w_f(i,:) = [1 0 0];
    end
end

%% Feature for completeness of user's profile
[~,~,c] = xlsread('raw-data.csv', 'F:F');
c_new = c(2:end);
c_f = zeros(length(c_new),2);
for i = 1 : length(c_new)
    temp = cell2mat(c_new(i));
    if temp == 1
        c_f(i,:) = [1 0];
    else
        c_f(i,:) = [0 1];
    end
end

%% Feature for years of registration
[~,~,t] = xlsread('raw-data.csv', 'H:H');
t_new = t(2:end);
t_f = zeros(length(t_new),4);
for i = 1 : length(t_new)
    temp = round(cell2mat(t_new(i)));
    if temp == 0 
        t_f(i,:) = [1 0 0 0];
    elseif temp == 1
        t_f(i,:) = [0 1 0 0];
    elseif temp == 2
        t_f(i,:) = [0 0 1 0];
    else
        t_f(i,:) = [0 0 0 1];
    end
end

%% Feature for age
[~,~,age] = xlsread('raw-data.csv', 'G:G');
age_new = age(2:end);
age_f = zeros(length(age_new),6);
for i = 1 : length(age_new)
    temp = cell2mat(age_new(i));
    if temp == '\t'
        age_f(i,:) = [0 0 0 0 0 1];
    else
        if temp > 0 && temp <= 20
            age_f(i,:) = [1 0 0 0 0 0];
        elseif temp > 20 && temp <= 30
            age_f(i,:) = [0 1 0 0 0 0];
        elseif temp > 30 && temp <= 40
            age_f(i,:) = [0 0 1 0 0 0];
        elseif temp > 40 && temp <= 50
            age_f(i,:) = [0 0 0 1 0 0];
        elseif temp > 50 && temp <= 60
            age_f(i,:) = [0 0 0 0 1 0];
        else
            age_f(i,:) = [0 0 0 0 0 1];
        end
    end
end

%% Feature for gender
[~,~,g] = xlsread('raw-data.csv', 'I:I');
g_new = g(2:end);
g_f = zeros(length(g_new),3);
for i = 1 : length(g_new)
    temp = cell2mat(g_new(i));
    if temp == 1
        g_f(i,:) = [1 0 0];
    elseif temp == 0
        g_f(i,:) = [0 1 0];
    else
        g_f(i,:) = [0 0 1];
    end
end

%% Feature for voucher usage
[~,~,u] = xlsread('raw-data.csv', 'L:L');
u_new = u(2:end);
u_f = zeros(length(u_new),2);
for i = 1 : length(u_new)
    temp = cell2mat(u_new(i));
    if temp == 1
        u_f(i,:) = [1 0];
    else
        u_f(i,:) = [0 1];
    end
end

%% Feature for reactivation
[~,~,r] = xlsread('raw-data.csv', 'M:P');
r_new = r(2:end,:);
r_f = zeros(length(r_new),5);
for i = 1 : length(r_new)
    temp = min( find( cell2mat(r_new(i,:))==1 ) );
    if temp == 1
        r_f(i,:) = [1 0 0 0 0];
    elseif temp == 2
        r_f(i,:) = [0 1 0 0 0];
    elseif temp == 3
        r_f(i,:) = [0 0 1 0 0];
    elseif temp == 4
        r_f(i,:) = [0 0 0 1 0];
    else
        r_f(i,:) = [0 0 0 0 1];
    end
end

%% Prepare training data 
xx_logistic = [dis_f max_v_f b_f w_f c_f t_f age_f g_f];
[~,~,yy_temp] = xlsread('raw-data.csv', 'L:L');
yy_logistic = cell2mat(yy_temp(2:end));
xx = [xx_logistic u_f];
yy = r_f;

x_logistic = xx_logistic(1:710078,:); % training data for logistic regression 
y_logistic = yy_logistic(1:710078); % training data for logistic regression 
x = xx(1:710078,:); % training data for neural network
y = yy(1:710078,:); % training data for neural network


save('x_logistic.mat','x_logistic')
save('y_logistic.mat','y_logistic')
save('x.mat','x')
save('y.mat','y')
