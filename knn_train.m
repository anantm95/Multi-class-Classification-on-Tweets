load train.mat

cost_matrix = [0 3 1 2 3; 4 0 2 3 2; 1 2 0 2 1; 2 1 2 0 2; 2 2 2 1 0];
model_knn = fitcknn(X_train_bag, Y_train, 'cost', cost_matrix);
save('model_knn.mat', 'model_knn');