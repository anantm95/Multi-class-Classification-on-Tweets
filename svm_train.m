load train.mat

libsvmdir = 'libsvm-3.22/matlab/';
addpath(libsvmdir);

options = '-t 1 -g 1 -r 1 -d 1 -b 1 -c 0.01';
model_svm_tfidf = svmtrain(Y_train, X_train_bag, options);

save('model_svm_tfidf.mat','model_svm_tfidf');