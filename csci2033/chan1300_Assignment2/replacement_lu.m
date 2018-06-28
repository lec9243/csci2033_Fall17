function [U_new, L_new] = replacement_lu(U, i, j, s, L)
rows = size(U,1);
L(i,j)= s;
if (i>rows) || (i<1) || (j<0) || (j>rows)
   disp('Error: input value is invalid.');
   disp('return the original matrix.');
else
U(i,:) = U(i,:) - s * U(j,:);
end
U_new = U;
L_new = L;
end