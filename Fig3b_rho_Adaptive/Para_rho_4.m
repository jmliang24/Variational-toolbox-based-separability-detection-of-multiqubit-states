function [Para_rho_4] =Para_rho_4(x)
%%
%8*11+11=99个参数
%%
alpha1=x(1:8);alpha2=x(9:16);alpha3=x(8:24);alpha4=x(25:32);alpha5=x(33:40);
alpha6=x(41:48);alpha7=x(49:56);alpha8=x(57:64);alpha9=x(65:72);alpha10=x(73:80);
alpha11=x(81:88);
%%
p=x(89:99);
p=abs(p);
p=p/sum(p);
%%
Para_rho_4=p(1)*rho_w(alpha1)+p(2)*rho_w(alpha2)+p(3)*rho_w(alpha3)+p(4)*rho_w(alpha4)+p(5)*rho_w(alpha5);
Para_rho_4=Para_rho_4+p(6)*rho_w(alpha6)+p(7)*rho_w(alpha7)+p(8)*rho_w(alpha8)+p(9)*rho_w(alpha9)+p(10)*rho_w(alpha10);
Para_rho_4=Para_rho_4+p(11)*rho_w(alpha11);
end