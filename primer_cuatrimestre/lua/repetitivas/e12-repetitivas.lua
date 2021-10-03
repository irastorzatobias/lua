print('Ingrese un numero: ')
num = tonumber(io.read())

for i = 2, num - 1 do
    if num % i == 0 then
        print('No es primo ')
        break
    end
    print('Numero primo')
    break
end

