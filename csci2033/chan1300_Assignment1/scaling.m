function a = scaling(A,i,s)
rows = size(A,1);
if (i>rows) || (i<1) 
   disp('Error: input value is invalid.');
   disp('return the original matrix.');
else
A(i,:) = s*A(i,:);
end
a = A;
end