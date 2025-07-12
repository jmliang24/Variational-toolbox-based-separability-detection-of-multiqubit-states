function [Para_rho_3] =Para_rho_3(x)
%%
%3*(12+12+12)=108个线路参数+9个概率参数=117个参数
%%
alpha1=x(1:12);alpha2=x(13:24);alpha3=x(25:36);

alpha4=x(37:48);alpha5=x(49:60);alpha6=x(61:72);

alpha7=x(73:84);alpha8=x(85:96);alpha9=x(97:108);
%%
p=x(109:117);
p=abs(p);
p=p/sum(p);
%%
zero=[1;0];zero3=kron(zero,kron(zero,zero));
state1=PQC3V1(alpha1)*zero3;
state1=state1*(state1');

state2=PQC3V1(alpha2)*zero3;
state2=state2*(state2');

state3=PQC3V1(alpha3)*zero3;
state3=state3*(state3');
%%
state4=PQC3V2(alpha4)*zero3;
state4=state4*(state4');


state5=PQC3V2(alpha5)*zero3;
state5=state5*(state5');

state6=PQC3V2(alpha6)*zero3;
state6=state6*(state6');

%%
state7=PQC3V3(alpha7)*zero3;
state7=state7*(state7');


state8=PQC3V3(alpha8)*zero3;
state8=state8*(state8');

state9=PQC3V3(alpha9)*zero3;
state9=state9*(state9');

%%
Para_rho_3=p(1)*state1+p(2)*state2+p(3)*state3;
Para_rho_3=Para_rho_3+p(4)*state4+p(5)*state5+p(6)*state6;
Para_rho_3=Para_rho_3+p(7)*state7+p(8)*state8+p(9)*state9;
end