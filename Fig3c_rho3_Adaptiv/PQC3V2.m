function pqc3v2 = PQC3V2(parameters)
% Create the parameterized quantum circuit V2 of 3 qubits.
% Number of parameters: 3+9=12
I2=[1,0;0,1];
parameters1=parameters(1:3);
parameters2=parameters(4:12);
%%
U_23=two_U(parameters1);
%%
pqc3v2=PQC3W(parameters2)*kron(I2,U_23);
end