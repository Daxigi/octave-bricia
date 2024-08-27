N = input('Ingrese un valor para N: ');

function f = mi_factorial(m)
    f = 1; 
    for i = 1:m  
        f = f * i;
    end
end

e = 1;

for i = 1:N
    e = e + 1 / mi_factorial(i); 
end

fprintf('El valor de e es: %f\n', e); 