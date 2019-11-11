function [ res ] = A2x2mult( a,c11,c12,c21,c22,g1,g2)
% This function calculates multiplication A*g for system with two images
% and two materials.

% Perform the needed matrix multiplications
ag1 = a*g1(:);
ag2 = a*g2(:);

% Calculate the parts needed for block matrix multiplication
res1 = c11*ag1;
res2 = c12*ag2;
res3 = c21*ag1;
res4 = c21*ag2;

% Combine results into the result
res = [res1 + res2; res3 + res4];
end
