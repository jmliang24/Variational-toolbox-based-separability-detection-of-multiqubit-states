function [Para_rho_1] =Para_rho_1(x)
%%
%12+12+12=36个线路参数+3个概率参数=39个参数
%%
alpha1=x(1:12);
alpha2=x(13:24);
alpha3=x(25:36);
%%
p=x(37:39);
p=abs(p);
p=p/sum(p);
%%
zero=[1;0];zero4=kron(zero,kron(zero,zero));
state1=PQC3V1(alpha1)*zero4;
state1=state1*(state1');

state2=PQC3V2(alpha2)*zero4;
state2=state2*(state2');

state3=PQC3V3(alpha3)*zero4;
state3=state3*(state3');

%%
Para_rho_1=p(1)*state1+p(2)*state2+p(3)*state3;
end