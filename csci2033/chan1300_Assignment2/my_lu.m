function [L, U] = my_lu(A)
rows = size(A,1);
L_temp = eye(rows,rows);
U_temp = A;
for i = 1:(rows-1)
    if (U_temp(i,i)< 10e-12)
        U = U_temp;
        L = L_temp;
        return;
    end
    for k = (i+1):rows
        p = U_temp(k,i)/U_temp(i,i)
        L_temp(k,i)= p;
        U_temp(k,:) = U_temp(k,:) - p * U_temp(i,:);
    end
end
U = U_temp;
L = L_temp;

end