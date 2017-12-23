function [Y_hat] = predict_knn(X_test_bag, test_raw)


% Inputs:   X_test_bag     nx9995 bag of words features
%           test_raw      nx1 cells containing all the raw tweets in text


% Outputs:  Y_hat           nx1 predicted labels (1 for joy, 2 for sadness, 3 for surprise, 4 for anger, 5 for fear)

load model_knn.mat

Y_hat = predict(model_knn, X_test_bag);