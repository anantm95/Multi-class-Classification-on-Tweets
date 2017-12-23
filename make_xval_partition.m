function [part] = make_xval_partition(n, n_folds)
% MAKE_XVAL_PARTITION - Randomly generate cross validation partition.
%
% Usage:
%
%  PART = MAKE_XVAL_PARTITION(N, N_FOLDS)
%
% Randomly generates a partitioning for N datapoints into N_FOLDS equally
% sized folds (or as close to equal as possible). PART is a 1 X N vector,
% where PART(i) is a number in (1...N_FOLDS) indicating the fold assignment
% of the i'th data point.

% YOUR CODE GOES HERE 

size_of_fold=ceil(n/n_folds);
k=1;
for j=1:size_of_fold
    for i=1:n_folds
        if(k<=n)
            part(k,1)=i;
            k=k+1;
        end
    end
end
part = part(randperm(length(part)));
part = part';



