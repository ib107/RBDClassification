
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BME 772 Project
% Isha Baxi, Maria Butt, Khushi Tailor
% Machine Learning
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc;

%% Load

train = load('train_features.mat'); 
test = load('test_features.mat'); 

%% Testing Models & Accuracies 

% subspace knn
predictedKNN = trainedModelKNN.predictFcn(test_features(:,1:end-1));
accuracyKNN = sum(predictedKNN == test_features.Labels)*100/numel(test_features.Labels)

% cubic svm
predictedCSVM = trainedModelCSVM.predictFcn(test_features(:,1:end-1));
accuracyCSVM = sum(predictedCSVM == test_features.Labels)*100/numel(test_features.Labels)

% wide neural network
predictedWNN = trainedModelWNN.predictFcn(test_features(:,1:end-1));
accuracyWNN = sum(predictedWNN == test_features.Labels)*100/numel(test_features.Labels)

% bagged trees (ensemble)
predictedBT = trainedModelBT.predictFcn(test_features(:,1:end-1));
accuracyBT = sum(predictedBT == test_features.Labels)*100/numel(test_features.Labels)

% logistic regression
% predictedLR = trainedModelLR.predictFcn(test_features(:,1:end-1));
% accuracyLR = sum(predictedLR == test_features.Labels)*100/numel(test_features.Labels)


%% Improve Accuracy 

[mrmrfeat_train,scores] = fscmrmr(train_features,'Labels');
stem(scores(mrmrfeat_train(1:100)),'bo')

[mrmrfeat_test,scores] = fscmrmr(test_features,'Labels');
stem(scores(mrmrfeat_test(1:100)),'bo')

%% New Training Set with MRMR Features

trainingSel = train_features(:, mrmrfeat_train(1:20)); 
trainingSel.Labels = train_features.Labels; 

testSel = test_features(:, mrmrfeat_test(1:20)); 
testSel.Labels = test_features.Labels; 
%% New Set Testing

% fine knn
% predictedFKNN = trainedModelFKNN.predictFcn(test_features(:,mrmrfeat(1:20)));
% accuracyFKNN = sum(predictedFKNN == test_features.Labels)*100/numel(test_features.Labels)

% subspace knn
predictedKNN_Sel = trainedModelKNN_Sel.predictFcn(test_features(:,mrmrfeat_test(1:20)));
accuracyKNN_Sel = sum(predictedKNN_Sel == test_features.Labels)*100/numel(test_features.Labels)

% % logistic regression
% predictedLR_Sel = trainedModelLR_Sel.predictFcn(test_features(:,mrmrfeat(1:20)));
% accuracyLR_Sel = sum(predictedLR_Sel== test_features.Labels)*100/numel(test_features.Labels)

% cubic svm
predictedCSVM_Sel = trainedModelCSVM_Sel.predictFcn(test_features(:,mrmrfeat_test(1:20)));
accuracyCSVM_Sel = sum(predictedCSVM_Sel == test_features.Labels)*100/numel(test_features.Labels)

% wide neural network 
predictedWNN_Sel = trainedModelWNN_Sel.predictFcn(test_features(:,mrmrfeat_test(1:20)));
accuracyWNN_Sel = sum(predictedWNN_Sel == test_features.Labels)*100/numel(test_features.Labels)

% bagged trees
predictedBT_Sel = trainedModelBT_Sel.predictFcn(test_features(:,mrmrfeat_test(1:20)));
accuracyBT_Sel = sum(predictedBT_Sel == test_features.Labels)*100/numel(test_features.Labels)
