print('Ingrese un numero para corroborar si es perfecto: ')
num = tonumber(io.read())
res = 0

for i = 1, num - 1 do
    if (num % i == 0) then
        res = res + i
    end
end
if (res == num) then
    print(num..' es numero perfecto')
else 
    print('No es un numero perfecto')
end