function [ res ] = A2x2mult( a,c11,c12,c21,c22,g1,g2)
% A*g
% Perform the needed matrix multiplications
ag1 = a*g1(:);
ag2 = a*g2(:);

% Calculate the parts needed for block matrix multiplication
Ag1 = c11*ag1;
Ag2 = c12*ag2;
Ag3 = c21*ag1;
Ag4 = c21*ag2;

% Combine results into the result
Ag = [Ag1 + Ag2; Ag3 + Ag4];
end

