Team name : InsertWinningTeamName

We have submitted implementations of all 3 types of methods.
We have Naive Bayes as a generative method, K-Nearest Neighbours as an instance-based method and Logistic Regression & SVM as discriminative methods.

Following are the instructions on how to run all the files submitted:

Ensure that train.mat is in the same folder as all the files being run.

Logistic Regression :
Run "logistic_train.m" to train the data
Run predict_logistic(X_test_bag, test_raw) to see the predictions.
(Regularization parameter for training = 1, found using cross validation.)

K-Nearest Neighbours :
Run "knn_train.m" to train the data
Run knn_logistic(X_test_bag, test_raw) to see the predictions.

Naive Bayes :
Run "nb_train.m" to train the data
Run predict_nb(X_test_bag, test_raw) to see the predictions.
(Here we used a multinomial distirbution)

SVM :
Run "svm_train.m" to train the data
Run predict_svm(X_test_bag, test_raw) to see the predictions.
(Kernel function is defined as X'X + 1. Kernel type is polynomial with degree 1. Gamma = 1. Constant term in the kernel function = 1. Cost parameter C = 0.01.)


---------------------------------------------------------------------

Extra Files: (Methods tried; not a part of mandatory submission) 

preprocessing.m - Lots of preprocessing in the training data
pca_all.m - Code for PCA with Naive Bayes