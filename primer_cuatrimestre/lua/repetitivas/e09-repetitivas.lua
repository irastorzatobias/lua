print('-- MULTIPLICACION --')
print('Numero 1: ')
num1 = tonumber(io.read())
print('Numero 2: ')
num2 = tonumber(io.read())

resultado = 0

for i = 1,num2 do
    resultado = resultado + num1
end 

print('Resultado de '..num1..' por '..num2)
print(resultado)
