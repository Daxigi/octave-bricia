disp(' ########### Ejercicio 3 ##############')

n = input('Ingrese cuantos numeros de la sucesion de Fibonacci desea: ', 's');

n = str2double(n);

if isnan(n) || isempty(n) || n <= 0 || n ~= fix(n)
    fprintf('La entrada debe ser un número entero positivo.\n');
    return
end

function serie_fibonacci = serie_fibonacci(n)

    serie_fibonacci = zeros(1, n); %vector fila de n elementos

    %se necesita los dos primeros terminos por la recursividad de la serie, en base a ellos se calcula el resto
    if n >= 1
        serie_fibonacci(1) = 0;  %el primer termino de la serie es 0
    end

    if n >= 2
        serie_fibonacci(2) = 1;  %el segundo termino de la serie es 1
    end

    for i = 3:n
        serie_fibonacci(i) = serie_fibonacci(i-1) + serie_fibonacci(i-2); %si es mayor o igual a 3, se calcula el termino i
    end
end

series = serie_fibonacci(n);

fprintf('Termino %d de la serie de Fibonacci: %d\n', n, series(n));
