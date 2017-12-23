load train.mat

cost_matrix = [0 3 1 2 3; 4 0 2 3 2; 1 2 0 2 1; 2 1 2 0 2; 2 2 2 1 0];
model_nb = fitcnb(X_train_bag, Y_train, 'Distribution', 'mn', 'cost', cost_matrix);
save('model_nb.mat', 'model_nb'); 

