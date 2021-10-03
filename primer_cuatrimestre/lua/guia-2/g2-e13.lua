print('Ingrese numero 1: ')
a = tonumber(io.read())
print('Ingrese numero 2: ')
b = tonumber(io.read())
print('Ingrese numero 3: ')
c = tonumber(io.read())

aux = 0

if a < b and c < b then
    print(a,b,c)
elseif c < a and b < c then
    aux = b
    a = b 
    b = aux
    c = 
end