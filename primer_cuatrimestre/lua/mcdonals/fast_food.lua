-- FAST FOOD APP 
local function printMenu()
    local menu = {}
    menu[1] = 'Generar venta'
    menu[2] = 'Editar precios'
    menu[3] = 'Ver ventas diarias'
    menu[4] = 'Cerrar caja'
    menu[5] = 'Borrar combo'
    menu[6] = 'Agregar combo'
    menu[7] = 'Salir'
    for i,v in ipairs(menu) do
        print(i..' - '..v)
    end
end

local function inputNumber() 
    num = tonumber(io.read())
    while num == nil or num < 0 do
        print('Ingreso un valor invalido, intente nuevamente: ')
        num = tonumber(io.read())
    end
    return num
end




local function printCombos(tabl)
    for i,v in ipairs(tabl) do
      for key,combo in pairs(v) do
          print(i..' - '..key..' - $'..combo)
      end
    end

end



local function changePrice(tabl)
    val = false
    combosCopy = tabl
    while val == false do
        printCombos(tabl) -- Printea las opciones de menu disponibles
        print('Que combo desea cambiar?')
        comboNumber = inputNumber()
        if comboNumber % 1 == 0 and (comboNumber <= #tabl and comboNumber > 0) then
            i = 1
            print('Que precio desea colocarle al combo '..comboNumber)
            local price = inputNumber()
                for i,comboTable in pairs(combosCopy) do
                    for combo, value in pairs(comboTable) do
                        if i == comboNumber then
                            combosCopy[i][combo] = price
                            val = true
                        end
                        i = i + 1
                    end
                end
            else
                os.execute('cls')
                print('Combo incorrecto') 
        end
    end
    os.execute('cls')
    print('Se cambio el precio del combo '..comboNumber..' exitosamente')
    return combosCopy
end

local function deleteCombo(tabl)
    val = false
    combosCopy = tabl
    while val == false do
        printCombos(tabl) -- Printea las opciones de menu disponibles
        print('Que combo desea borrar?')
        comboNumber = tonumber(io.read())
        if comboNumber % 1 == 0 and (comboNumber <= #tabl and comboNumber > 0) then
            i = 1
                for k,v in pairs(combosCopy) do
                    if i == comboNumber then
                        table.remove(combosCopy, i)
                        val = true
                    end
                    i = i + 1
                end
            else
                os.execute('cls')
                print('Combo incorrecto') 
        end
    end
    os.execute('cls')
    print('Se elimino el combo '..comboNumber..' exitosamente')
    return combosCopy
end

local function registrarVenta(tabl)
    ticket = {}
    total = 0
    local val = false
    while val == false do

        printCombos(tabl) -- Printea las opciones de menu disponibles
        print('Elija combo: (0 para finalizar)')
        comboElegido = inputNumber()
        if comboElegido == 0 then 
            val = true -- si el usuario ingresa 0 se finaliza el while y se devuelve el ticket con el valor
            return total, ticket
        end
        if comboElegido > #tabl or comboElegido < 0 then
            os.execute('cls')
            printCombos(tabl)
            print('El numero ingresado no corresponde a un combo, elija nuevamente: ')
            comboElegido = inputNumber()
        else
            table.insert(ticket,tabl[comboElegido])
            for combo, precio in pairs(tabl[comboElegido]) do
                print(combo, precio)
                total = total + precio
            end
        end
    end
end

local function volverAlMenu() 
    print('Presione v para volver al menu principal: ')
    local userOpc = io.read()
    while userOpc:lower() ~= 'v' do
        print('Valor invalido, intente nuevamente')
        userOpc = io.read()
        if userOpc:lower() == 'v' then
            return true
        end
    end
end

local function addCombo(tabl)
    newCombos = tabl
    print('Ingrese el nombre del combo: ')
    nameCombo = io.read()
    print('Ingrese el precio del combo')
    precioCombo = inputNumber()
    table.insert(newCombos,{[nameCombo] = precioCombo})
    return newCombos
end



function main()
    combos = {
        {['Hamburguesa de carne con papas y gaseosa chica'] = 300},
        {['Hamburguesa de pollo con papas y gaseosa chica'] = 350},
        {['Hamburguesa de carne con papas y gaseosa  mediana'] = 400},
        {['Hamburguesa de pollo con papas y gaseosa mediana'] = 350},
        {['Hamburguesa de carne con papas y gaseosa grande'] = 500},
        {['Hamburguesa de pollo con papas y gaseosa grande'] = 500},
        {['Hamburguesa carne'] = 200},
        {['Hamburguesa pollo'] = 200}, 
        {['Papas fritas grandes'] = 150},
        {['Papas fritas medianas'] = 130},
        {['Papas fritas chicas'] = 110},
        {['Helado cono'] = 100},
        {['Mcflurry'] = 150},
        {['Sundae'] = 150},
        {['Gaseosa'] = 70},
        {['Jugo'] = 60},
        {['Agua'] = 50}
    }
    caja = 0

-- descuento en combos dependiendo el dia:
    -- today = os.date("%A")
    -- promocionDelDia = {}
    -- if today == 'Sunday' then
    --     combos[1]['Hamburguesa de carne con papas y gaseosa chica'] = combos[1]['Hamburguesa de carne con papas y gaseosa chica'] - 
    --     combos[1]['Hamburguesa de carne con papas y gaseosa chica'] * 0.50  -- si es lunes, este combo tiene el 50% off
    -- elseif today == 'Monday' then
    --     combos[3]['Hamburguesa de carne con papas y gaseosa mediana'] = combos[3]['Hamburguesa de carne con papas y gaseosa mediana'] - 
    --     combos[3]['Hamburguesa de carne con papas y gaseosa mediana'] * 0.50
    -- elseif today == 'Tuesday' then
    --     combos[5]['Hamburguesa de carne con papas y gaseosa grande'] = combos[5]['Hamburguesa de carne con papas y gaseosa grande'] - 
    --     combos[5]['Hamburguesa de carne con papas y gaseosa grande'] * 0.50
    -- elseif today == 'Wednesday' then
    --     combos[2]['Hamburguesa de pollo con papas y gaseosa chica'] = combos[2]['Hamburguesa de pollo con papas y gaseosa chica'] - 
    --     combos[2]['Hamburguesa de pollo con papas y gaseosa chica'] * 0.50
    -- elseif today == 'Thursday' then
    --     combos[4]['Hamburguesa de pollo con papas y gaseosa mediana'] = combos[4]['Hamburguesa de pollo con papas y gaseosa mediana'] - 
    --     combos[4]['Hamburguesa de pollo con papas y gaseosa mediana'] * 0.50
    -- elseif today == 'Friday' then
    --     combos[6]['Hamburguesa de pollo con papas y gaseosa grande'] = combos[6]['Hamburguesa de pollo con papas y gaseosa grande'] - 
    --     combos[6]['Hamburguesa de pollo con papas y gaseosa grande'] * 0.50
    -- elseif today == 'Saturday' then
    --     combos[7]['Hamburguesa carne'] = combos[7]['Hamburguesa carne'] - 
    --     combos[7]['Hamburguesa carne'] * 0.50
    -- end

    val = false
    ventas = 1
    ventasTotales = {}
    while val == false do

        os.execute('cls')   
        printMenu()
        print('Elija su opcion: ')
        opcionUsuario = inputNumber()
        while opcionUsuario > 6 or opcionUsuario <= 0 do
            os.execute('cls')
            print('No existe esa opcion en el menu, intente nuevamente')
            printMenu()
            opcionUsuario = inputNumber()
        end
        
        if opcionUsuario == 1 then -- registra la venta y printea ticket
            venta, ticket = registrarVenta(combos)
            caja = caja + venta
            table.insert(ventasTotales,ticket)
            os.execute('cls')
            print('Total gastado: '..venta)
            printCombos(ticket)

            if not(volverAlMenu()) then
               val = false 
            end
        elseif opcionUsuario == 2 then -- cambiar precio de los combos
            combos = changePrice(combos)
            os.execute('cls')
            if not(volverAlMenu()) then
                val = false 
             end
        elseif opcionUsuario == 3 then -- ver combos vendidos y recaudado hasta el momento
            os.execute('cls')
            print('Combos vendidos: ')
            for i,v in ipairs(ventasTotales) do
                print('Venta numero ',i)
                printCombos(v)
            end
            print('Recaudado hasta el momento: '..caja)
            if not(volverAlMenu()) then
                val = false 
             end
        elseif opcionUsuario == 7 then -- salir del programa
            val = true 
        elseif opcionUsuario == 4 then -- cierra la caja, muestra lo recaudado y sale del programa
            val = true
            print('Cerro la caja, hoy se recaudo: '..caja..' pesos')
        elseif opcionUsuario == 5  then -- borrar combo
            combos = deleteCombo(combos)
            if not(volverAlMenu()) then
                val = false 
            end
        elseif opcionUsuario == 6 then
            combos = addCombo(combos)
        end
        end
    end
    print('Salio del programa')


main()




