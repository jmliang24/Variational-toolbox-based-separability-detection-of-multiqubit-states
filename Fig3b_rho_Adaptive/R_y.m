function [R_y] = R_y(alpha)
%绕泡利Y的旋转函数
iota=sqrt(-1);
Y=[0,-iota;iota,0];
R_y=expm(-iota*alpha*Y/2);
end