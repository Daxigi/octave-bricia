n = 100000; %cantidad de veces a sumar
sum_simple_1 = single(0);   % precisión simple para 1
sum_simple_0_00001 = single(0);  % precisión simple para 0.00001
sum_double_0_00001 = double(0);  % precisión doble para 0.00001

% suma número 1 con precisión simple n veces
for i = 1:n
    sum_simple_1 = sum_simple_1 + single(1);
end

% suma número 0.00001 con precisión simple n veces
for i = 1:n
    sum_simple_0_00001 = sum_simple_0_00001 + single(0.00001);
end

% suma número 0.00001 con precisión doble n veces
for i = 1:n
    sum_double_0_00001 = sum_double_0_00001 + double(0.00001);
end


fprintf('Suma del número 1 (precisión simple): %.15f\n', sum_simple_1);
fprintf('Suma del número 0.00001 (precisión simple): %.15f\n', sum_simple_0_00001);
fprintf('Suma del número 0.00001 (precisión doble): %.15f\n', sum_double_0_00001);

% valor esperado 
exact_simple = n * 0.00001;
exact_double = n * 0.00001;

fprintf('Valor exacto esperado: %.15f\n', exact_double);
ue disminuye la precisión
%resultados
% - precisión + error de redondeo
% prec simple tiene errores más grandes en la suma acumulativa
% prec doble tiene errores más pequeños en la suma acumulativa
