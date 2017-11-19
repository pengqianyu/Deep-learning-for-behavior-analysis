# mini-project
----------------------------------------------------------------------------------
Description of files
----------------------------------------------------------------------------------
1. predict_result.csv: result file giving multiple user groups;
2. voucher_strategy_result.csv: detailed discount scheme for each group of users;
3. Report.pdf: description of steps, data and algorithms that were used;
4. code: file folder of source codes.

----------------------------------------------------------------------------------
Guidances/details of codes
----------------------------------------------------------------------------------
## Run in SQL environment
1. pre-process-sqls.sql is used to extract the raw data for the training;
2. pre-process-sqls-predict.sql is used to extract the raw data for the prediction;

## Run in Matlab environment
3. pre_process.m is used to generate features for training data;
4. pre_process_predict.m is used to generate features for predict data;
5. logistic_regression.m is used for logistic regression, and it requires three functions: sigmoid.m, costFunction.m and logistic_predict.m;
6. integer_programming.m is used for optimizing voucher strategy;

## Run in Python environment
7. neural_network.py is used for deep neural network prediction.
## The codes are executed in the order: 
1-->2-->3-->4-->5-->6-->7.
