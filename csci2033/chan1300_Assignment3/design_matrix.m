function Ai = design_matrix(pi)
A = zeros(2,6);
A(1,1) = pi(1,1);
A(1,2) = pi(2,1);
A(1,3) = 0;
A(1,4) = 0;
A(1,5) = 1;
A(1,6) = 0;
A(2,1) = 0;
A(2,2) = 0;
A(2,3) = pi(1,1);
A(2,4) = pi(2,1);
A(2,5) = 0;
A(2,6) = 1;
Ai = A;
end