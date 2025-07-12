function [rho_w] =rho_w(x)
%%
%   8个参数
zero=[1;0];
zero4=kron(zero,kron(zero,kron(zero,zero)));
%%
rho_w=PQC4W(x)*zero4;
rho_w=rho_w*(rho_w');
end