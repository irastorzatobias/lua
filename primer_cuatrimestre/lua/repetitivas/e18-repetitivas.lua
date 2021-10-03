print(' -- VENTAS EMPRESA --')
ventas = 4 -- Total de ventas
importeVenta = {} 
rubroArticulo = {} -- Libreria, regaleria y jugueteria
ventasLib = 0
ventasReg = 0
ventasJug = 0
impTotalLib = 0
impTotalReg = 0
impTotalJug = 0
mayor = 0

for i = 0, 3 do
    print('-- Ingrese el importe de la venta '..(i + 1)..' --')
    importeVenta[i] = tonumber(io.read())
    print('-- ¿A qué rubro corresponde? (L / R / J) --')
    repeat
        print('Ingrese solo los siguientes caracteres correspondientes a cada rubro\n L / R / J')
        rubroArticulo = io.read()
    until (rubroArticulo == 'L') or (rubroArticulo == 'R') or (rubroArticulo == 'J')
    if rubroArticulo == 'L' then
        ventasLib = ventasLib + 1
        impTotalLib = impTotalLib + importeVenta[i]
    elseif rubroArticulo == 'R' then
        ventasReg = ventasReg + 1
        impTotalReg = impTotalReg + importeVenta[i]
    elseif rubroArticulo == 'J' then
        ventasJug = ventasJug + 1
        impTotalJug = impTotalJug + importeVenta[i]
    end
end

if impTotalLib > mayor then
    mayor = impTotalLib
end
if impTotalJug > mayor then
    mayor = impTotalJug
end
if impTotalReg > mayor then
    mayor = impTotalJug
end

print(' -- VENTAS POR RUBRO --')
print('VENTAS LIBRERIA: '..ventasLib)
print('VENTAS JUGUETERIA: '..ventasJug)
print('VENTAS REGALERIA: '..ventasReg)
if mayor == impTotalLib then
    print('El rubro con mas gananacias fue libreria')
elseif mayor == impTotalJug then
    print('El rubro con mas ganancias fue jugueteria')
elseif mayor == impTotalReg then
    print('El rubro con mas ganancias fue regaleria')
end

