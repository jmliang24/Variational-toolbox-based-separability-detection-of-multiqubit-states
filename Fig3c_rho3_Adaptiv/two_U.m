function [two_u] = two_U(theta)
%%
%two-qubit unitary
%%
X=[0,1;1,0];zero=[1;0];one=[0;1];I=[1,0;0,1];
%%
CNOT21=kron(I,zero*(zero'))+kron(X,one*(one'));
CNOT12=kron(zero*(zero'),I)+kron(one*(one'),X);
%%
two_u=CNOT21*kron(I,R_y(theta(3)))*CNOT12*kron(R_z(theta(1)),R_y(theta(2)))*CNOT21;
end