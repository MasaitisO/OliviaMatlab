function [day1toDay2] = dayComparator(SubjectID, Day1, Day2)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

for i = 1:length(SubjectID)
    if (Day2(i,1)>Day1(i,1))
        day1toDay2(i,1) = SubjectID(i,1);
    else
        
    end
    

end   
end

