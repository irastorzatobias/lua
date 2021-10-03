print('-- SUELDO --')
print('Ingrese año en el cual se incorporo a la empresa: ')
anioIngreso = tonumber(io.read())
print('Ingrese cantidad de faltas: ')
faltas = tonumber(io.read())
sueldoBasico = 30000
if anioIngreso <= 2015 and faltas == 0 then
    sueldoBasico = sueldoBasico + sueldoBasico * 0.30
    print('Beneficio por antiguedad, sueldo a cobrar: '..sueldoBasico)
else
    print('Sueldo a cobrar: '..sueldoBasico)
end
