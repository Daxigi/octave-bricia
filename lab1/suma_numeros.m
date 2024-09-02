n = input('Ingrese un valor para N: ', 's');

n = str2double(n);

if  isnan(n) || isempty(n)|| n < 0 || n ~= fix(n)  
    fprintf('N debe ser un número entero no negativo.\n');
    return
end

function suma_num = suma(n)
    suma_num = 0;
    for i = 1:n
        suma_num = suma_num + i;
    end
end

result = suma(n);
fprintf('La suma de los primeros %d números positivos es: %d\n', n, result);
