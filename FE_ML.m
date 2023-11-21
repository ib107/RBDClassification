%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BME 772 Project
% Isha Baxi, Maria Butt, Khushi Tailor
% Feature Extraction and Machine Learning
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc;

%% EMG Feature Extraction

EMGdata = load("EMGdata.mat");
EMGdata = EMGdata.EMGdata;

sf = waveletScattering('SignalLength',30721,'SamplingFrequency',512);

partition = cvpartition(36,'Holdout',0.25);
idx = partition.test;

testd = EMGdata(idx,1);
testlabels = table2array(EMGdata(idx,2));
testdata = table2array(rows2vars(testd)); 
testdata = cell2mat(testdata(1,2:10));
testdata = testdata';

traind = EMGdata(~idx,1);
trainlabels = table2array(EMGdata(~idx,2));
traindata = table2array(rows2vars(traind));
traindata = cell2mat(traindata(1,2:28));
traindata = traindata';

trainfeatures = featureMatrix(sf,traindata');

Nwin = size(trainfeatures,2);
features_train = permute(trainfeatures,[2 3 1]);
features_train = reshape(features_train, size(features_train,1)*size(features_train,2),[]);

testfeatures = featureMatrix(sf,testdata');

features_test = permute(testfeatures,[2 3 1]);
features_test = reshape(features_test, size(features_test,1)*size(features_test,2),[]);

[labels_train,labels_test] = createSequenceLabels(Nwin,trainlabels,testlabels);

test_features = [array2table(features_test),array2table(labels_test)];
train_features = [array2table(features_train),array2table(labels_train)];

for i = 1:406
    varnames(i) = strcat("Var",num2str(i));
end

varnames(407) = "Labels";

train_features.Properties.VariableNames = varnames;
test_features.Properties.VariableNames = varnames;

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

% logistic regression
predictedLR = trainedModelLR.predictFcn(test_features(:,1:end-1));
accuracyLR = sum(predictedLR == test_features.Labels)*100/numel(test_features.Labels)

%% Improve Accuracy 

[mrmrfeat,scores] = fscmrmr(train_features,'Labels');
stem(scores(mrmrfeat(1:100)),'bo')

%% New Training Set with MRMR Features

trainingSel = train_features(:, mrmrfeat(1:20)); 
trainingSel.Labels = train_features.Labels; 

%% New Set Testing

% fine knn
predictedFKNN = trainedModelFKNN.predictFcn(test_features(:,mrmrfeat(1:20)));
accuracyFKNN = sum(predictedFKNN == test_features.Labels)*100/numel(test_features.Labels)

% subspace knn
predictedKNN_Sel = trainedModelKNN_Sel.predictFcn(test_features(:,mrmrfeat(1:20)));
accuracyKNN_Sel = sum(predictedKNN_Sel == test_features.Labels)*100/numel(test_features.Labels)

% logistic regression
predictedLR_Sel = trainedModelLR_Sel.predictFcn(test_features(:,mrmrfeat(1:20)));
accuracyLR_Sel = sum(predictedLR_Sel== test_features.Labels)*100/numel(test_features.Labels)

% cubic svm
predictedCSVM_Sel = trainedModelCSVM_Sel.predictFcn(test_features(:,mrmrfeat(1:20)));
accuracyCSVM_Sel = sum(predictedCSVM_Sel == test_features.Labels)*100/numel(test_features.Labels)

% wide neural network 
predictedWNN_Sel = trainedModelWNN_Sel.predictFcn(test_features(:,mrmrfeat(1:20)));
accuracyWNN_Sel = sum(predictedWNN_Sel == test_features.Labels)*100/numel(test_features.Labels)

%% 

writetable(train_features, 'trainfeatures.xls');
%% Functions 

function [sequence_labels_train,sequence_labels_test] = createSequenceLabels(Nwin,trainLabels,testLabels)
    
    n = Nwin;
    A = trainLabels;
    B = testLabels;

    for k = 1:size(A,1)
        sequence_labels_train(n*k-(n-1) : n*k, :) = repmat(A(k,:),n,1);
    end
    
    for k = 1:size(B,1)
        sequence_labels_test(n*k-(n-1) : n*k, :) = repmat(B(k,:),n,1);
    end

end