print('-- PASAJE COLECTIVO --')
print('-- INGRESE SU EDAD: ')
edad = tonumber(io.read())
precioBoleto = 100
if edad > 55 then
    print('¿Posee carnet de jubilado?(s/n)')
    carnetJubilado = io.read();
    if carnetJubilado == 's' then
        precioBoleto = precioBoleto - precioBoleto * 0.50
        print('Obtuvo descuento del 50%, debe abonar '..precioBoleto)
    else
        print('Debe abonar: '..precioBoleto)
    end
elseif edad >= 5 or edad<=10 then
    precioBoleto = precioBoleto - precioBoleto * 0.50
    print('Obtuvo descuento del 50%, debe abonar: '..precioBoleto)
else 
    print('No obtuvo descuento, debe abonar: '..precioBoleto)
end


