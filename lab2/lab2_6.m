% Inicialización
N = 100000; % Número de sumas
sum_simple_1 = single(0);   % Precisión simple para el número 1
sum_simple_0_00001 = single(0);  % Precisión simple para el número 0.00001
sum_double_0_00001 = double(0);  % Precisión doble para el número 0.00001

% Sumar el número 1 con precisión simple N veces
for i = 1:N
    sum_simple_1 = sum_simple_1 + single(1);
end

% Sumar el número 0.00001 con precisión simple N veces
for i = 1:N
    sum_simple_0_00001 = sum_simple_0_00001 + single(0.00001);
end

% Sumar el número 0.00001 con precisión doble N veces
for i = 1:N
    sum_double_0_00001 = sum_double_0_00001 + double(0.00001);
end

% Mostrar los resultados
fprintf('Suma del número 1 (precisión simple): %.8f\n', sum_simple_1);
fprintf('Suma del número 0.00001 (precisión simple): %.8f\n', sum_simple_0_00001);
fprintf('Suma del número 0.00001 (precisión doble): %.15f\n', sum_double_0_00001);

% Comparar con el valor exacto esperado
exact_simple = N * 0.00001;
exact_double = N * 0.00001;
fprintf('Valor exacto esperado: %.15f\n', exact_double);
