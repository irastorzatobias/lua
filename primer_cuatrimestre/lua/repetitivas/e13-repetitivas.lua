print('Ingrese un anio: ')
anio = tonumber(io.read())

if (anio % 4 == 0 and anio % 100 ~= 0) then
    print('El anio es bisiesto')
elseif ((anio % 100) == 0) and ((anio % 400) == 0) then
    print('El anio es bisiesto')
else 
    print('El anio no es bisiesto')
end

