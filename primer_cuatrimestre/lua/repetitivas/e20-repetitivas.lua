print('Nombre del cobrador: ')
nombreCobrador = io.read()
monto = {}
acum = 0
total = 0
for i = 0, 2 do
    print('Monto cobrado en el mes '..i + 1)
    monto[i] = tonumber(io.read())
    total = monto[i] + total
end
print('Nombre cobrador: '..nombreCobrador)
print('Monto total: '..total)
print('Promedio por mes: '..total / (#monto + 1))




