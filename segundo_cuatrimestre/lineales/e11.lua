require 'funciones'


local function menuPrincipal() 
    print('-- SUELDO EMPLEADO -- ')
    menu = {}
    menu[1] = 'Generar sueldo' 
    menu[2] = 'Modificar sueldo fijo' 
    menu[3] = 'Modificar precio por hora extra' 
    menu[4] = 'Ver sueldo fijo y costo por hora extra'  
    menu[5] = 'Salir'
    for i,v in ipairs(menu) do
        print(i..' - '..v)
    end
    opcion = valInt('Ingrese la opcion: ',1,#menu)
    return opcion
end

sueldoBasico = 4000 
pHora = 50
tRecaudado = 0
continue = true
while continue == true do
    menuOpcion = menuPrincipal()
    if menuOpcion == 1 then
        print(' -- GENERAR SUELDO --')
        horasTrabajadas = valInt('Ingrese horas extras trabajadas: ',0,math.huge)
        cobro = calculoLineal(pHora, horasTrabajadas, sueldoBasico)
        print('El sueldo es de: '..cobro)
        tRecaudado = tRecaudado + cobro
        continue = seguirPrograma()
    elseif menuOpcion == 2 then
        print(' -- MODIFICAR SUELDO FIJO -- ')
        nSueldoBasico = valInt('Ingrese el nuevo sueldo basico: ',sueldoBasico,math.huge)
        sueldoBasico = nSueldoBasico
        print('El nuevo sueldo basico es de '.. sueldoBasico)
        continue = seguirPrograma()
    elseif menuOpcion == 3 then
        print('-- MODIFICAR PRECIO POR HORA EXTRA -- ')
        nPrecioHora = valInt('Ingrese el nuevo precio por hora extra: ',pHora,math.huge)
        pHora = nPrecioHora
        print('El nuevo precio por hora extra es '..pHora)
        continue = seguirPrograma()
    elseif menuOpcion == 4 then
        print('SUELDO BASICO: '..sueldoBasico)
        print('PRECIO POR HORA EXTRA: '..pHora)
        continue = seguirPrograma()
    elseif menuOpcion == 5 then
        continue = false
    end
end
print(' -- FIN DEL PROGRAMA -- ')
