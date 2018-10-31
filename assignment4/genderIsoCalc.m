function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
for i = 1:length(Gender)
    if Gender(i,1)== 'M'
        maleIsoIndMeans(i,1) = (Day1(i,1)+ Day2(i,1)+ Day3(i,1))/3
    else
        femaleIsoIndMeans(i,1) = (Day1(i,1)+ Day2(i,1)+ Day3(i,1))/3
    end
end

maleGroupIsoMean = sum(maleIsoIndMeans)/nnz(maleIsoIndMeans);
    femaleGroupIsoMean = sum(femaleIsoIndMeans)/nnz(femaleIsoIndMeans);  
end

