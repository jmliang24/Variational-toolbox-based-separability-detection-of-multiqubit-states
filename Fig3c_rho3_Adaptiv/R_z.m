function [R_z] = R_z(alpha)
%绕泡利Z的旋转函数
iota=sqrt(-1);
Z=[1,0;0,-1];
R_z=expm(-iota*alpha*Z/2);
end