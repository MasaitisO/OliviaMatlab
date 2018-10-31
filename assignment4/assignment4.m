%clears workspace.
clear all

%this function imports each column as a separate vector and assigns
%variable names as coumn headers.
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');

%this function calculates the mean for the following groups: each male among all 3 days, each female among all 3 days, a collective male mean, and a collective female mean for isokinetic data. 
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean]=genderIsoCalc(Gender,Day1,Day2,Day3)

%this function compares days 1 & 2, if improvements were made, it returns
%the subject's ID number. It repeats the process to compare days 2 & 3.
[day1toDay2] = dayComparator(SubjectID, Day1, Day2)
[day2toDay3] = dayComparator(SubjectID, Day2, Day3)

%this function normalizes the isokinetic data to the subject's weight.
normDay1mean= Day1./Weight
normDay2mean= Day2./Weight
normDay3mean= Day3./Weight

%here I ensured that the matrix dimensions agreed so that I was able to
%export the new data via a csv file. 
newMatrix = zeros(25,1);
newMatrix(1,1) = maleGroupIsoMean;
femaleGroupIsoMeanMatrix = zeros(25,1);
femaleGroupIsoMeanMatrix(1,1) = femaleGroupIsoMean;
femaleIsoIndMeans(23:25,1) = 0;
day1toDay2(23:25,1) = 0;
day2toDay3(23:25,1) = 0;
exportdata = [day1toDay2, day2toDay3, femaleGroupIsoMeanMatrix, newMatrix, femaleIsoIndMeans, maleIsoIndMeans, normDay1mean, normDay2mean, normDay3mean] 
csvwrite('iso_results.csv', exportdata);