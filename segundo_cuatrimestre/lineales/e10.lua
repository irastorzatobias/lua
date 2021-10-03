-- Por el alquiler de un coche cobran una cuota fija de 250 pesos y adicionalmente 3 pesos por
-- kilómetro recorrido.

require 'funciones'


local function menuPrincipal() 
    print('-- ALQUILER DE COCHE -- ')
    menu = {}
    menu[1] = 'Cobrar coche alquilado' 
    menu[2] = 'Modificar cuota fija' 
    menu[3] = 'Modificar precio por km recorridos' 
    menu[4] = 'Ver costo fijo y costo por km' 
    menu[5] = 'Ver estado coche actual'
    menu[6] = 'Salir'
    for i,v in ipairs(menu) do
        print(i..' - '..v)
    end
    opcion = valInt('Ingrese la opcion: ',1,6)
    return opcion
end



cuotaFija = 250
precioKm = 3
continue = true
kmIniciales = 0
kmFinales = 0
    while continue == true do
        menuOpcion = menuPrincipal()
        if menuOpcion == 1 then
            print(' -- COBRAR COCHE ALQUILADO --')
            kmIniciales = valInt('Km al retirar el auto', kmIniciales,math.huge)
            kmFinales = valInt('Km al entregar el auto', kmIniciales, math.huge)
            kmRecorridos = kmFinales - kmIniciales
            cobro = calculoLineal(kmRecorridos, precioKm, cuotaFija)
            kmIniciales = kmFinales
            print('Debe abonar '..cobro)
            continue = seguirPrograma()
        elseif menuOpcion == 2 then
            print(' -- MODIFICAR CUOTA FIJA -- ')
            nCuotaFija = valInt('Ingrese la nueva cuota fija: ',cuotaFija,math.huge)
            cuotaFija = nCuotaFija  
            print('La nueva cuota fija es de '.. nCuotaFija)
            continue = seguirPrograma()
        elseif menuOpcion == 3 then
            print('-- MODIFICAR PRECIO POR KM RECORRIDOS -- ')
            nPrecioKm = valInt('Ingrese el nuevo precio por km: ',precioKm,math.huge)
            precioKm = nPrecioKm
            print('El nuevo precio por km es '..precioKm)
            continue = seguirPrograma()
        elseif menuOpcion == 4 then
            print('COSTO FIJO '..cuotaFija)
            print('COSTO POR KM '..precioKm)
            continue = seguirPrograma()
        elseif menuOpcion == 5 then
            print('KM COCHE ACTUAL: '..kmIniciales)
            continue = seguirPrograma()
        elseif menuOpcion == 6 then
            continue = false
        end
    end
    print(' -- FIN DEL PROGRAMA -- ')
