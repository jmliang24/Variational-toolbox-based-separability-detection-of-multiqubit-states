function [Para_rho_1] =Para_rho_1(x)
%%
%8*8+8=72个参数
%%
alpha1=x(1:8);alpha2=x(9:16);alpha3=x(8:24);alpha4=x(25:32);alpha5=x(33:40);
alpha6=x(41:48);alpha7=x(49:56);alpha8=x(57:64);
%%
p=[x(65),x(66),x(67),x(68),x(69),x(70),x(71),x(72)];
p=abs(p);
p=p/sum(p);
%%
Para_rho_1=p(1)*rho_w(alpha1)+p(2)*rho_w(alpha2)+p(3)*rho_w(alpha3)+p(4)*rho_w(alpha4)+p(5)*rho_w(alpha5);
Para_rho_1=Para_rho_1+p(6)*rho_w(alpha6)+p(7)*rho_w(alpha7)+p(8)*rho_w(alpha8);%+p(9)*rho_w(alpha9)+p(10)*rho_w(alpha10);
end