function pqc3v1 = PQC3V1(parameters)
% Create the parameterized quantum circuit V1 of 3 qubits.
% Number of parameters: 3+9=12
I2=[1,0;0,1];
parameters1=parameters(1:3);
parameters2=parameters(4:12);
%%
U_12=two_U(parameters1);
%%
pqc3v1=PQC3W(parameters2)*kron(U_12,I2);
end