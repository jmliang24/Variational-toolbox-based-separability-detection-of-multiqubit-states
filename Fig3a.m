clc;
clear;
%%
zero=[1;0];one=[0;1];I=[1,0;0,1];
%%
% The state of 10 qubits
Bell=kron(zero,one)+kron(one,zero);
Bell=Bell/sqrt(2);Bell=Bell*(Bell');
Bell5=kron(Bell,kron(Bell,kron(Bell,kron(Bell,Bell))));

%%
M=5;
I4=kron(I,kron(I,kron(I,I)));
I8=kron(I4,I4);
I10=kron(I8,kron(I,I));
%%
for q=0.2
    for i=1:1:M
        m(i)=i
        noise_Bell5=(1-q)*Bell5+q*I10/trace(I10);
        y1(i)=abs(1-fidelity(noise_Bell5^i,Bell5)/trace(noise_Bell5^i));
    end
end
for q=0.4
    for i=1:1:M
        m(i)=i
        noise_Bell5=(1-q)*Bell5+q*I10/trace(I10);
        y2(i)=abs(1-fidelity(noise_Bell5^i,Bell5)/trace(noise_Bell5^i));
    end
end
for q=0.6
    for i=1:1:M
        m(i)=i
        noise_Bell5=(1-q)*Bell5+q*I10/trace(I10);
        y3(i)=abs(1-fidelity(noise_Bell5^i,Bell5)/trace(noise_Bell5^i));
    end
end
for q=0.8
    for i=1:1:M
        m(i)=i
        noise_Bell5=(1-q)*Bell5+q*I10/trace(I10);
        y4(i)=abs(1-fidelity(noise_Bell5^i,Bell5)/trace(noise_Bell5^i));
    end
end

%%
plot(m,y1,'--o','MarkerFaceColor','[0.9922    0.7451    0.5216]','Color','[0.9922    0.7451    0.5216]','Linewidth', 1.5,'MarkerSize',6)
hold on
plot(m,y2,'--o','MarkerFaceColor','[0.9922    0.5529    0.2353]','Color','[0.9922    0.5529    0.2353]','Linewidth', 1.5,'MarkerSize',6)
hold on
plot(m,y3,'--o','MarkerFaceColor','[0.9020    0.3333    0.0510]','Color','[0.9020    0.3333    0.0510]','Linewidth', 1.5,'MarkerSize',6)
hold on
plot(m,y4,'--o','MarkerFaceColor','[0.3294    0.1529    0.5608]','Color','[0.3294    0.1529    0.5608]','Linewidth', 1.5,'MarkerSize',6)
hold on
%%
% set(gca,'XScale','log');
set(gca,'YScale','log');
% 设置整体字体大小
set(gca, 'FontSize', 14); % 设置坐标轴的字体大小
set(gcf, 'DefaultAxesFontSize', 14); % 设置图形的默认坐标轴字体大小
% 添加标题和标签
xlabel('$m$', 'Interpreter', 'latex');
ylabel('infidelity', 'Interpreter', 'latex');

% 添加图例
% 添加图例
legend('$q=0.2$','$q=0.4$','$q=0.6$','$q=0.8$', 'Interpreter', 'latex');
