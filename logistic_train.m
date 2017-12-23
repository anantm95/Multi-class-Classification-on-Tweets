load train.mat

liblineardir = 'liblinear-2.11/matlab/';
addpath(liblineardir);

%remove empty tweets
filtered_train_bag = X_train_bag(sum(X_train_bag, 2) > 0, :);
filtered_Y_train = Y_train(sum(X_train_bag, 2) > 0, :);

%use BOW normalization
norm_train_bag = filtered_train_bag ./ sum(filtered_train_bag, 2);

% implement tf-idf here 
tf = log(1 + norm_train_bag); %do log
N = size(norm_train_bag, 1);
idf = log(N ./ (1+sum(filtered_train_bag)));
save('idf.mat', 'idf');

tfidf_train_bag = sparse(tf .* idf);

%build model for submission
model_logistic_tfidf = train(filtered_Y_train, tfidf_train_bag,'-s 0 -e 0.001 -c 1');
save('model_logistic_tfidf.mat', 'model_logistic_tfidf');