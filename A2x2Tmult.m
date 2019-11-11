function [ res ] = A2x2Tmult( a,c11,c12,c21,c22,m1,m2 )
% This function calculates multiplication AT*m for system with 
% two images
am1 = a.'*m1(:);
am2 = a.'*m2(:);

% Compute the parts of the result individually
res1 = c11*am1;
res2 = c21*am2;
res3 = c12*am1;
res4 = c22*am2;

% Collect the results together
res = [res1 + res2; res3 + res4];
end