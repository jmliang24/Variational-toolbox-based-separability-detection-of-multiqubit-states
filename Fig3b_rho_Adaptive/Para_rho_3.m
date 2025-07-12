function [Para_rho_3] =Para_rho_3(x)
%%
%8*10+10=90个参数
%%
alpha1=x(1:8);alpha2=x(9:16);alpha3=x(8:24);alpha4=x(25:32);alpha5=x(33:40);
alpha6=x(41:48);alpha7=x(49:56);alpha8=x(57:64);alpha9=x(65:72);alpha10=x(73:80);
%%
p=[x(81),x(82),x(83),x(84),x(85),x(86),x(87),x(88),x(89),x(90)];
p=abs(p);
p=p/sum(p);
%%
Para_rho_3=p(1)*rho_w(alpha1)+p(2)*rho_w(alpha2)+p(3)*rho_w(alpha3)+p(4)*rho_w(alpha4)+p(5)*rho_w(alpha5);
Para_rho_3=Para_rho_3+p(6)*rho_w(alpha6)+p(7)*rho_w(alpha7)+p(8)*rho_w(alpha8)+p(9)*rho_w(alpha9)+p(10)*rho_w(alpha10);
end