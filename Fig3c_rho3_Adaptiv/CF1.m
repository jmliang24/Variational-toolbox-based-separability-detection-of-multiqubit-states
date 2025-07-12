function [CF1] = CF1(x)
%3qubit fully separable state detection
%full rank
%第一次训练39个参数
%%
zero=[1;0];one=[0;1];
%%
GHZ3=kron(zero,kron(zero,zero))+kron(one,kron(one,one));
GHZ3=GHZ3/sqrt(2);
GHZ3=GHZ3*(GHZ3');

Identity=ones(1,8);
Identity=diag(Identity);

%初始态
q=0.7;
rho=(1-q)*GHZ3+q*Identity/8;
%%
Prho=Para_rho_1(x);
%%
CF1=trace(rho^2)+trace(Prho^2)-2*trace(rho*Prho);
CF1=real(CF1);
end