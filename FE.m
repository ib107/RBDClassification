
clear all;
clc;

%% Partition Data

EMGdata = load("EMGdata.mat");
EMGdata = EMGdata.EMGdata;

sf = waveletScattering('SignalLength',30721,'SamplingFrequency',512);

partition = cvpartition(36,'Holdout',0.25);
idx = partition.test;

%% Adding Testing Labels

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

%% Training Features 

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
