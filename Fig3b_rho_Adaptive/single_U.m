function [single_u] = single_U(parameter)
%the single-qubit unitary
iota=sqrt(-1);
Y=[0,-iota;iota,0];Z=[1,0;0,-1];
%%
single_u=expm(-iota*parameter(2)*Z/2)*expm(-iota*parameter(1)*Y/2);
end