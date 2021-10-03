print('-- EJERCICIO 15 --')
multiplos = 0
comprendidos = 0
for i=0,19 do
    print('Ingrese el numero: '..i + 1)
    num = tonumber(io.read())
    if i == 0 then
        menor = num
    end
    
    if (num % 2 ~= 0) and (num % 8 == 0) then
        multiplos = num + result
    end
    if (num >= 25) or (num <= 45) then
        comprendidos = comprendidos + 1
    end 
    if num < menor then
        menor = num
    end
end

print(' -- SUMA DE IMPARES MULTIPLOS DE 8 --')
print(multiplos)
print('-- NUMEROS COMPRENDIDOS ENTRE 25 Y 45 --')
print(comprendidos)
print('-- NUMERO MENOR --')
print(menor)
