function [Y_hat] = predict_logistic(X_test_bag, test_raw)


% Inputs:   X_test_bag     nx9995 bag of words features
%           test_raw      nx1 cells containing all the raw tweets in text


% Outputs:  Y_hat           nx1 predicted labels (1 for joy, 2 for sadness, 3 for surprise, 4 for anger, 5 for fear)

liblineardir = 'liblinear-2.11/matlab/';
addpath(liblineardir);

%--------------------TF-IDF-----------------------------%

load idf.mat
load model_logistic_tfidf.mat

%test bag pre-processing
norm_test_bag = X_test_bag ./ sum(X_test_bag, 2);

tf = log(1 + norm_test_bag);
tfidf_test_bag = sparse(tf .* idf);

Ytest = ones(size(tfidf_test_bag, 1), 1);
[~,~,prob] = predict(Ytest, tfidf_test_bag, model_logistic_tfidf,'-b 1');
prob2 = prob(:,model_logistic_tfidf.Label');

costs = [0 3 1 2 3; 4 0 2 3 2; 1 2 0 2 1; 2 1 2 0 2; 2 2 2 1 0];
prob3 = prob2*costs;
[~,Y_hat] = min(prob3, [], 2);

end