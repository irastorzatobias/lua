print('Ingrese un numero: ')
a = tonumber(io.read())
print('Ingrese el segundo numero: ')
b = tonumber(io.read())
print('Que desea hacer con los numeros?')
print('1 - SUMA \n2- RESTA \n3 - DIVISION \n4 - MULTIPLICACION')
c = io.read()
resultado = 0;
operacion = ''
if c == '1' then
    operacion = 'suma'
    resultado = a + b
    print('Eligio: '..operacion..' entre '..a..' y '..b..' el resultado es: '..resultado)
elseif c == '2' then
    operacion = 'resta'
    resultado = a - b
    print('Eligio: '..operacion..' entre '..a..' y '..b..' el resultado es: '..resultado)
elseif c == '3' then
    operacion = 'division'
    resultado = a / b
    print('Eligio: '..operacion..' entre '..a..' y '..b..' el resultado es: '..resultado)
elseif c == '4' then
    operacion = 'multiplicacion'
    resultado = a * b
    print('Eligio: '..operacion..' entre '..a..' y '..b..' el resultado es: '..resultado)
end




