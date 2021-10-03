pares = {}
impares = {}
cantPares = 0
cantImpares = 0
num = {}
for i = 0, 19 do
    print('Ingrese el numero '..i)
    num[i] = io.read()
    if (num[i] % 2) == 0 then
        cantPares = cantPares + 1
        pares[i] = num[i]
    else
        cantImpares = cantImpares + 1
        impares[i] = num[i]
    end
end

print('Cantidad de pares: '..cantPares)
print('Cantidad de impares: '..cantImpares)
print('Numeros ingresados: ')
print(table.concat( num, ", "))
