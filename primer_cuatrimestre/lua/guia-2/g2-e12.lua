print('Ingrese numero 1: ')
num1 = tonumber(io.read())
print('Ingrese numero 2: ')
num2 = tonumber(io.read())
print('Ingrese numero 3: ')
num3 = tonumber(io.read())

if num1 > num2 and num1 > num3 then
    print(num1..' es el mayor')
elseif num2 > num1 and num2 > num3 then
    print(num2..' es el mayor')
elseif num3 > num1 and num3 > num2 then
    print(num3..' es el mayor')
end

