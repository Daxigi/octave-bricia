entero = input ('ingrese un numero entero:');

if entero < 0 || entero ~= fix(entero)
    fprintf('Entero debe ser un numero entero no negativo');
    return
end

factorial = 1;

for i = 1 : entero
    factorial = factorial * i;
end


fprintf('el factorial es %d\n', entero, factorial);
