function [cost] = xval_error(X, Y, part)

liblineardir = 'liblinear-2.11/matlab/';
addpath(liblineardir);

n = size(X,1);
p = size(X, 2);
num_folds = max(part);
total_cost = 0;
cost_matrix = [0, 3, 1, 2, 3; 4, 0, 2, 3, 2; 1, 2, 0, 2, 1; 2, 1, 2, 0, 2; 2, 2, 2, 1, 0];

for fold = 1:num_folds
    Xtrain = [];
    Ytrain = [];
    Xtest = [];
    Ytest = [];

    flag = (part == fold);
    Xtest = X(flag, :);
    Ytest = Y(flag, :);
    Xtrain = X(flag == 0, :);
    Ytrain = Y(flag == 0, :);
    
%     model = fitcnb(Xtrain, Ytrain, 'cost', cost_matrix);
%     labels = predict(model, Xtest);

    model_logistic = train(Ytrain, Xtrain,'-s 0 -e 0.001 -c 1');
    [~,~,prob] = predict(Ytest, Xtest, model_logistic,'-b 1');
    prob2 = prob(:,model_logistic.Label');

    costs = [0 3 1 2 3; 4 0 2 3 2; 1 2 0 2 1; 2 1 2 0 2; 2 2 2 1 0];
    prob3 = prob2*costs;
    [~,labels] = min(prob3, [], 2);

    this_cost = performance_measure(labels, Ytest)
    total_cost = total_cost + this_cost;
end

cost = total_cost / num_folds;

        
            
            