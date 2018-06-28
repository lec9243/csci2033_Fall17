function [U_new, L_new, P_new] = interchange_lup(U, i, j, L, P)
rows = size(U,1);
if (i>rows) || (i<1) || (j<0) || (j>rows)
   disp('Error: input value is invalid.');
   disp('return the original matrix.');
else
%interchange Ui and Uj
    temp = U(i,:);
    U(i,:) = U(j,:);
    U(j,:) = temp;
%interchange Pi and Pj
    temp1 = P(i,:);
    P(i,:) = P(j,:);
    P(j,:) = temp1;
%update matrix L
    if  (i>1)
        n = i-1;
        temp2 = L(i,1:n);
        L(i,1:n) = L(j,1:n);
        L(j,1:n) = temp2;
    end
end
U_new = U;
L_new = L;
P_new = P;
end