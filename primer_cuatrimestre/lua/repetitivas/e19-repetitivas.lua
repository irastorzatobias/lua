print(' -- VENTAS -- ')
caja = 0
for i = 0, 2 do
    print('Ingrese el importe de la venta '..i + 1)
    importe = tonumber(io.read())
    repeat
        print('Forma de pago (E, C, T): ')
        formaDePago = io.read()
        if ((formaDePago ~= 'E') or (formaDePago ~= 'C') or (formaDePago ~= 'T')) then
            print('Forma de pago incorrecta')
        end
    until formaDePago == 'E' or formaDePago == 'C' or formaDePago == 'T'
    if formaDePago == 'E' then
        caja = (importe - importe * 0.10) + caja
    elseif formaDePago == 'C' then
        caja = (importe + importe * 0.05) + caja
    elseif formaDePago == 'T' then
        caja = (importe + importe * 0.10) + caja
    end
end


print('CAJA: '..caja)