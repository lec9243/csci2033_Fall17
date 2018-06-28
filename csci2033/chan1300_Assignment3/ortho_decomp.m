function [c, v_perp] = ortho_decomp(U,v)
T = transpose(U);
pro = U*T*v;
c = T*v;
v_perp = v - pro;
end