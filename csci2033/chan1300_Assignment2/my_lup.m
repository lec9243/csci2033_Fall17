function [L, U, P] = my_lup(A)
rows = size(A,1);
L_temp = eye(rows,rows);
P_temp = eye(rows,rows);
U_temp = A;
for i = 1:(rows-1)
    test = 0;
    for q = i:rows
        if (U_temp(q,i)>test)
            test = U_temp(q,i);
            j = q;
        end
    end
    [U_temp,L_temp,P_temp]=interchange_lup(U_temp,i,j,L_temp,P_temp);
    if (U_temp(i,i)< 10e-12)
        U = U_temp;
        L = L_temp;
        P = P_temp;
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
P = P_temp;
end