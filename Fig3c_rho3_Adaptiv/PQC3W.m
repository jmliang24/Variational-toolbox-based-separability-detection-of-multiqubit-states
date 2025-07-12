function pqc3w = PQC3W(parameters)
% Create the parameterized quantum circuit W of 3 qubits.
% Number of parameters: 3*3=9
parameters1=parameters(1:3);
parameters2=parameters(4:6);
parameters3=parameters(7:9);

U_1=single_U(parameters1);
U_2=single_U(parameters2);
U_3=single_U(parameters3);
%%
pqc3w=kron(U_1,kron(U_2,U_3));
end