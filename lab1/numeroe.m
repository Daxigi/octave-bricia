n = input('Ingrese un valor para N: ');

function f = mi_factorial(m)
    f = 1; 

    for i = 1:m  
        f = f * i;
    end
end

e = 1; %primer termino 

%se calcula e en base a la serie de taylor-mclaurin en este caso
for i = 1:n
    e = e + 1 / mi_factorial(i); 
end

fprintf('El valor de e usando %d términos es: %0.15f\n', n+1, e); % %f muestra 6 decimales