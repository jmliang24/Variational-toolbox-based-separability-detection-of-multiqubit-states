function [CF2] = CF2(x)
%3qubit fully separable state detection
%full rank
%第二次训练81个参数
%%
zero=[1;0];one=[0;1];
%%
GHZ3=kron(zero,kron(zero,zero))+kron(one,kron(one,one));
GHZ3=GHZ3/sqrt(2);
GHZ3=GHZ3*(GHZ3');

Identity=ones(1,8);
Identity=diag(Identity);

%初始态
q=0.9;
rho=(1-q)*GHZ3+q*Identity/8;
rho=kron(rho,zero*(zero'));
%%
Prho=Para_rho_2(x);
%%
CF2=trace(rho^2)+trace(Prho^2)-2*trace(rho*Prho);
CF2=real(CF2);
end