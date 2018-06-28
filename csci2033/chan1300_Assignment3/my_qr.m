function [Q, R] = my_qr(A)
m = size(A,1);
[b,a] = rref(A);
x = length(a); 
C = A(:, a);
Q = A(:, a);
for i = 2:x
    for j = 1:i-1
    Q(:,i) = Q(:,i)- dot(C(:,i),Q(:,j))/dot(Q(:,j),Q(:,j))*Q(:,j);
    end
end
for i = 1:x
    Q(:,i) = Q(:,i)/norm(Q(:,i));
end
T = transpose(Q);
R = T*A;
end