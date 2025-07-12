function pqc4w = PQC4W(parameters)
% Create the parameterized quantum circuit W of 4 qubits.
% Number of parameters: 2*4=8
parameters1=parameters(1:2);
parameters2=parameters(3:4);
parameters3=parameters(5:6);
parameters4=parameters(7:8);

U_1=single_U(parameters1);
U_2=single_U(parameters2);
U_3=single_U(parameters3);
U_4=single_U(parameters4);
%%
pqc4w=kron(U_1,kron(U_2,kron(U_3,U_4)));
end