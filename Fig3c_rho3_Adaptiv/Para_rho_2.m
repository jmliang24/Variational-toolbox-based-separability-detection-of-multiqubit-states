function [Para_rho_2] =Para_rho_2(x)
%%
%2*(12+12+12)=72个线路参数+6个概率参数=78个参数
%%
alpha1=x(1:12);alpha2=x(13:24);

alpha3=x(25:36);alpha4=x(37:48);

alpha5=x(49:60);alpha6=x(61:72);
%%
p=x(73:78);
p=abs(p);
p=p/sum(p);
%%
zero=[1;0];zero4=kron(zero,kron(zero,zero));
state1=PQC3V1(alpha1)*zero4;
state1=state1*(state1');

state2=PQC3V1(alpha2)*zero4;
state2=state2*(state2');
%%
state3=PQC3V2(alpha3)*zero4;
state3=state3*(state3');

state4=PQC3V2(alpha4)*zero4;
state4=state4*(state4');

%%
state5=PQC3V3(alpha5)*zero4;
state5=state5*(state5');

state6=PQC3V3(alpha6)*zero4;
state6=state6*(state6');

%%
Para_rho_2=p(1)*state1+p(2)*state2;
Para_rho_2=Para_rho_2+p(3)*state3+p(4)*state4;
Para_rho_2=Para_rho_2+p(5)*state5+p(6)*state6;
end