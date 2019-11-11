function [ res ] = A2x2mult_matrixfree( c11,c12,c21,c22,g1,g2,ang )
% This function calculates multiplication A*g for system with two images
% and two materials, without constructing the matrix A.

% Perform the needed matrix multiplications. Now a matrix multiplication
% has been switched to radon
ag1 = radon(g1,ang);
ag2 = radon(g2,ang);

% Calculate the parts needed for block matrix multiplication
res1 = c11*ag1;
res2 = c12*ag2;
res3 = c21*ag1;
res4 = c21*ag2;

% Combine results into the result
res = [res1 + res2; res3 + res4];
end