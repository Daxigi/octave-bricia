n = input('Ingrese cuantos numeros de la sucesion de Fibonacci desea');

a=0;
b=1;
acum = 0;

    fprintf('%d /n %d', a, b)

    disp('')
for i=1: n
    acum= a + b;
    a= b;
    b = acum;
    fprintf('Termino %d : -- Valor :%d\n', i, acum);
end
