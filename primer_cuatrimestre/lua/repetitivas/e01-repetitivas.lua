print('Hasta que numero desea sumar?: ')
cant = io.read()
sum = 0
for i = 0, cant do
    sum = sum + i
end

print('Resultado de los '..cant..' primeros numeros')
print(sum)