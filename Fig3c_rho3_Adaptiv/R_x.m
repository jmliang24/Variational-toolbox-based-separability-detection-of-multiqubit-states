function [R_x] = R_x(alpha)
%绕泡利X的旋转函数
iota=sqrt(-1);
X=[0,1;1,0];
R_x=expm(-iota*alpha*X/2);
end