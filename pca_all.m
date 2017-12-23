load train_bag.mat
load validation_bag.mat
load labels.mat

k = 10;
n = size(train_bag,1);
[~,~,PC] = svds(train_bag, k);
mu = mean(train_bag);
S = sparse(n,k);

for i=1:n
    S(i,:) = (train_bag(i,:)-mu)*PC;
end

%naive bayes
cost = [0, 3, 1, 2, 3; 4, 0, 2, 3, 2; 1, 2, 0, 2, 1; 2, 1, 2, 0, 2; 2, 2, 2, 1, 0];
model_nb_pca = fitcnb(S, train_labels, 'cost', cost);
save('model_nb_pca.mat', 'model_nb_pca');

%PCA on validation data
val_n = size(validation_bag,1);
T = sparse(val_n, k);
mu_val = mean(validation_bag);

for i=1:val_n
    T(i,:) = (validation_bag(i,:)-mu_val)*PC;
end

Y_hat = predict(model_nb_pca, T);
cost = performance_measure(Y_hat, validation_labels)
