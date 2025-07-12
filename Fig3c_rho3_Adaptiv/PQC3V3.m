function pqc3v3 = PQC3V3(parameters)
% Create the parameterized quantum circuit V3 of 3 qubits.
% Number of parameters: 3+9=12
%%
X=[0,1;1,0];zero=[1;0];one=[0;1];I=[1,0;0,1];
%%
parameters1=parameters(1:3);
parameters2=parameters(4:12);
%%
%U_13=123
CNOT31=kron(I,kron(I,zero*(zero')))+kron(X,kron(I,one*(one')));
CNOT13=kron(zero*(zero'),kron(I,I))+kron(one*(one'),kron(I,X));
%
U_13=CNOT31*kron(I,kron(I,R_y(parameters1(3))))*CNOT13*kron(R_z(parameters(1)),kron(I,R_y(parameters1(2))))*CNOT31;
%%
pqc3v3=PQC3W(parameters2)*U_13;
end