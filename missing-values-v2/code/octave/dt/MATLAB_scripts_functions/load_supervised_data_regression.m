% Load data.csv, data_prediction1.csv and data_prediction2.csv
% originalX and originaly are X and y of training data set, respectively.
% originalX_prediction1 and originaly_prediction1 are test data set 1, respectively.
% originalX_prediction2 is test data set 2, respectively.
% SampleNameForPrediction is sample names.

data = csvread( 'data.csv', 1, 1);
data_prediction1 = csvread( 'data_prediction1.csv', 1, 1);
originalX_prediction2 = csvread( 'data_prediction2.csv', 1, 1);

originalX = data(:,2:end);
originaly = data(:,1);
originalX_prediction1 = data_prediction1(:,2:end);
originaly_prediction1 = data_prediction1(:,1);

[SampleNameTraintmp,SampleNameTrain] = xlsread( 'data.csv', ['A2:A' num2str(size(originalX,1)+1)] );
if isempty(SampleNameTrain)
    SampleNameTrain = cellstr(num2str(SampleNameTraintmp));
end
[SampleNameTesttmp,SampleNameTest] = xlsread( 'data_prediction1.csv', ['A2:A' num2str(size(originalX_prediction1,1)+1)] );
if isempty(SampleNameTest)
    SampleNameTest = cellstr(num2str(SampleNameTesttmp));
end
[SampleNameForPredictiontmp,SampleNameForPrediction] = xlsread( 'data_prediction2.csv', ['A2:A' num2str(size(originalX_prediction2,1)+1)] );
if isempty(SampleNameForPrediction)
    SampleNameForPrediction = cellstr(num2str(SampleNameForPredictiontmp));
end