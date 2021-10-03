require 'funciones'
-- Miguel es técnico en computadoras. Cuando le piden un servicio a domicilio, cobra un valor fijo de
-- $150 y un adicional según el tiempo que le demore el trabajo, que calcula a razón de $50 la hora.

local function menuPrincipal() 
    print('-- TECNICO PC -- ')
    menu = {}
    menu[1] = 'Cobrar servicio tecnico' 
    menu[2] = 'Modificar valor fija' 
    menu[3] = 'Modificar precio por hora' 
    menu[4] = 'Ver costo fijo y costo por hora' 
    menu[5] = 'Ver lo recaudado en el dia' 
    menu[6] = 'Salir'
    for i,v in ipairs(menu) do
        print(i..' - '..v)
    end
    opcion = valInt('Ingrese la opcion: ',1,#menu)
    return opcion
end

valorFijo = 150 
pHora = 50
tRecaudado = 0
continue = true
while continue == true do
    menuOpcion = menuPrincipal()
    if menuOpcion == 1 then
        print(' -- COBRAR SERVICIO TECNICO --')
        horasTrabajadas = valInt('Ingrese horas trabajadas: ',0,math.huge)
        cobro = calculoLineal(pHora, horasTrabajadas, valorFijo)
        print('Debe abonar '..cobro)
        tRecaudado = tRecaudado + cobro
        continue = seguirPrograma()
    elseif menuOpcion == 2 then
        print(' -- MODIFICAR VALOR FIJA -- ')
        nCuotaFija = valInt('Ingrese la nueva cuota fija: ',cuotaFija,math.huge)
        valorFijo = nCuotaFija  
        print('La nueva cuota fija es de '.. nCuotaFija)
        continue = seguirPrograma()
    elseif menuOpcion == 3 then
        print('-- MODIFICAR PRECIO POR HORA -- ')
        nPrecioHora = valInt('Ingrese el nuevo precio por hora: ',valorFijo,math.huge)
        pHora = nPrecioHora
        print('El nuevo precio por hora es '..pHora)
        continue = seguirPrograma()
    elseif menuOpcion == 4 then
        print('COSTO FIJO '..valorFijo)
        print('COSTO POR KM '..pHora)
        continue = seguirPrograma()
    elseif menuOpcion == 5 then
        print('Recaudado en el dia: '..tRecaudado)
        continue = seguirPrograma()
    elseif menuOpcion == 6 then
        continue = false
    end
end
print(' -- FIN DEL PROGRAMA -- ')
