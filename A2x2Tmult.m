function [ res ] = A2x2Tmult(a,c11,c12,c21,c22,m1,m2 )
% function [ res ] = A2x2Tmult(a,c11,c12,c21,c22,m1,m2 )
% This function calculates multiplication AT*m for system with 
% two images
%
% Version 1.0, September 13, 2019
% (c) Salla Latva-Äijö and Samuli Siltanen 
%
% Routine for the two-energies and two materials scheme related to S Siltanen's 
% method for solution of the conjugate gradient Tikhonov algorithm. Computes 
% multiplication A^T*m of the combination system matrix transpose (without 
% building the actual matrix)and the combined measurements (=sinograms) m1 
% and m2, which refer to material one (iodine) and material two (aluminum).
% 
% Arguments
% a         system matrix for one material measurements
% c11       attenuation coefficient for material one (iodine) imaged with energy E1=30kV (low)
% c12       attenuation coefficient for material two (al) imaged with energy E1=30kV (low)
% c21       attenuation coefficient for material one (iodine) imaged with energy E2=50kV (high)
% c22       attenuation coefficient for material two (al) imaged with energy E1=50kV (high)
% m1        measurement (sinogram) of material one
% m2        measurement (sinogram) of material one
% Returns
% res       vertical vector A^T*m lengt(a*m1*2)
% 
% Last revision Salla Latva-Äijö Sep 2019


% Perform the needed matrix multiplications
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
