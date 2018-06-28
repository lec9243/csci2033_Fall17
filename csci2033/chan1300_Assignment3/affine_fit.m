function [M, t] = affine_fit(P, P_tilde)
l = size(P,2);
A = zeros(l*2,6);
P1 = zeros(l*2,1);
for i = 1:l
    temp = design_matrix(P(:,i));
    index = i*2-1;
    A(index,:)=temp(1,:);
    A((i*2),:)= temp(2,:);
    P1(index,1) = P_tilde(1,i);
    P1((i*2),1) = P_tilde(2,i);
end
beta = least_squares(A,P1);
[M,t] = my_unpack(beta);
end