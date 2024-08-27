
N = input('Ingrese un valor para N: ');

% N sea un número entero no negativo
if N < 0 || N ~= fix(N)
    fprintf('N debe ser un número entero no negativo.');
    return
end

% suma de los primeros N números positivos
suma = 0;

for i = 1:N
    suma = suma + i; % Sumar el valor actual de i
end

% resultado
fprintf('La suma de los primeros %d números positivos es: %d\n', N, suma);

