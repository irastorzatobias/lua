print('-- SALARIO DE LA EMPRESA --')
print('Ingrese el pago por hora: ')
precioHora = tonumber(io.read())
print('Cantidad de horas semanales: ')
horasSemanales = tonumber(io.read())
salarioBruto = 0
salarioNeto = 0
if horasSemanales <= 38 then
    salarioBruto = precioHora * horasSemanales
elseif horasSemanales > 38 then
    salarioBruto = (precioHora * 0.50 + precioHora) * horasSemanales
end

if salarioBruto <= 5200 then
    salarioNeto = salarioBruto
    print('Su salario es de: '..salarioNeto)
elseif salarioBruto > 5200 then
    salarioNeto = (salarioBruto - salarioBruto * 0.10)
    print('Tiene un 10% de impuestos en su salario')
    print('Su salario es de: '..salarioNeto)
end




