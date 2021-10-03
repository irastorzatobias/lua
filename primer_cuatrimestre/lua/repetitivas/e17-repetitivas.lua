print('-- NOMBRE DEL EMPLEADO -- ')
employeeName = io.read()
sales = {}
totalSales = 0
promedio = 0
comision = 0
for i=1,3 do
    print('-- VENTAS MES '..i..' --')
    sales[i] = tonumber(io.read())
    totalSales = totalSales + sales[i]
end
promedio = totalSales / #sales
comision = totalSales * 0.05
print('NOMBRE   VENTA MENSUAL\nTOBIAS')
for i = 1, 3 do
    print('               '..sales[i]..'\n')
end
print('Total vendido: '..totalSales)
print('Promedio:      '..promedio)
print('Comision:      '..comision)



