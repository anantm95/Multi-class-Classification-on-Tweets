function [Y_hat] = predict_svm(X_test_bag, test_raw)

load idf.mat
load model_svm_tfidf.mat
 

%test bag pre-processing
norm_test_bag = X_test_bag ./ sum(X_test_bag, 2);
tf = log(1+norm_test_bag);
tfidf_test_bag = sparse(tf .* idf);

Ytest = ones(size(tfidf_test_bag, 1), 1);
[~,~,prob] = svmpredict(Ytest, tfidf_test_bag, model_svm_tfidf,'-b 1');
prob2 = prob(:,model_svm_tfidf.Label');

costs = [0 3 1 2 3; 4 0 2 3 2; 1 2 0 2 1; 2 1 2 0 2; 2 2 2 1 0];
prob3 = prob2*costs;
[~,Y_hat] = min(prob3, [], 2);

end