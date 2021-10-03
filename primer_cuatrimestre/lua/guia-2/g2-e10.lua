print('Ingrese el primer numero: ')
num1 = tonumber(io.read())
print('Ingrese el segundo numero: ')
num2 = tonumber(io.read())

if num1 > 100 then
    print('El primer numero es mayor a 100')
elseif num1 > 10 and num1 < 100 then
    print('El primer numero esta entre 10 y 100')
elseif num1 < 10 then
    print('El primer numero es menor que 10')
else
    print('El valor es 10 o no se encuentra entre los intervalos')
end


if num2 > 0 then
    print('El segundo numero es positivo')
elseif num2 < 0 then
    print('El segundo numero es negativo')
elseif num2 == 0 then
    print('El segundo numero es cero')
else 
    print('Valor nulo')
end
