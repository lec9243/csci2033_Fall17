function x = least_squares(A, b)
[Q, R] = my_qr(A);
T = transpose(Q);
U = T*b;
x = back_sub(R, U);
end