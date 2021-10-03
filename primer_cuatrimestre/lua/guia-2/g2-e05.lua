print('Ingrese un numero: ')
num1 = tonumber(io.read())
print('Ingrese el segundo numero: ')
num2 = tonumber(io.read())

if num1 > num2 then
    print(num1..' es mayor que '..num2)
elseif num1 == num2 then
    print('Son iguales')
else 
    print(num2..' es mayor que '..num1)
end
