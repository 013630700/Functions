function [ res ] = A2x2Tmult_matrixfree( c11,c12,c21,c22,m1,m2,ang )
% % This function calculates multiplication AT*m for system with 
% two images and without constructing the matrix A.
am1 = iradon(m1,ang,'none');
am1 = am1(2:end-1,2:end-1);
corxn = 7.65; % Incomprehensible correction factor
am1 = corxn*am1;

am2 = iradon(m2,ang,'none');
am2 = am2(2:end-1,2:end-1);
am2 = corxn*am2;

% Compute the parts of the result individually
res1 = c11*am1;
res2 = c21*am2;
res3 = c12*am1;
res4 = c22*am2;

% Collect the results together
res = [res1 + res2; res3 + res4];
end