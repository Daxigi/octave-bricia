entero = input('Ingrese un número entero: ', 's'); 

entero = str2double(entero); 

if isnan(entero) || isempty(entero) || entero < 0 || entero ~= fix(entero)
    fprintf('El número debe ser un entero no negativo.\n');
    return
end

function result = factorial_entero(entero)
    result = 1;

    for i = 1:entero
        result = result * i;
    end
end

resultado = factorial_entero(entero);
fprintf('El factorial de %d es: %d\n', entero, resultado);
