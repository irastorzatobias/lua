require 'file_methods'
require 'funciones'
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

local function getCombos(file)
    -- Funcion para obtener combos
    local combos = {}
    if fileExists(file) then
        openFile = io.open(file, 'r') 
        for line in openFile:lines() do
            -- obtengo el lugar de la coma
            local coma = string.find(line,',') 
            -- valor antes de la coma que representa al combo
            local combo = string.sub(line,0,coma - 1)
            -- valor despues de la coma que representa el precio del combo
            local precioCombo = string.sub(line,coma + 1)
            aux = {}
            if combo:lower() ~= 'combo' then -- si el nombre del combo es diferente de combos, que seria el titulo de la tabla
                aux[combo] = precioCombo
                table.insert(combos, aux) 
            end
        end
        openFile:close()
        return combos
    else
        print('No hay combos cargados')
    end
end


function printCombos(file)
    combos = getCombos(file)
    if #combos > 1 then
        for i,v in ipairs(combos) do
            for combo, precio in pairs(v) do
                print(i..' - '..combo..' - '..precio)
            end
        end
    else
        print('Ningun combo está cargado')
    end
end


local function writeCombos(file, combos)  
    -- Reescribe combos
    if #combos >= 1 then
        openFile = io.open(file,'w')
        for i,v in ipairs(combos) do   
            for combo, precio in pairs(v) do
                print(i..' - '..combo..' - '..precio)
                openFile:write(combo..','..precio..'\n')
            end
        end
        openFile:close()
    else if #combos < 1 then
        print('No hay combos cargados') 
    else
        print('No existe el archivo o no hay combos cargadas')
    end
    end
    
end

local function writeCombo(file)
    -- Agrega combo solo
    print('Ingrese el nombre del combo: ')
    nameCombo = io.read()
    print('Ingrese el precio del combo')
    precioCombo = inputNumber()
    allCombos = getCombos(file)
    numeroCombo = (#allCombos) + 1
    openFile = io.open(file,'a')
    openFile:write(nameCombo..','..precioCombo..'\n')
    openFile:close()
end


local function deleteCombo(file)
    --- Borra combo especifico
    val = false
    combosCopy = getCombos(file)
    if #combosCopy >= 1 then
        while val == false do
            printCombos(file) -- Printea las opciones de menu disponibles
            print('Que combo desea borrar?')
            comboNumber = tonumber(io.read())
            if comboNumber % 1 == 0 and (comboNumber <= #combosCopy and comboNumber > 0) then
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
        writeCombos(file, combosCopy)
    else
        print('No hay combos cargados!')
    end
end

local function changePrice(file)
    -- Cambia el precio de un combo
    val = false
    combosCopy = getCombos(file)
    if #combosCopy >= 1 then
        while val == false do
            printCombos(file) -- Printea las opciones de menu disponibles
            print('Que combo desea cambiar?')
            comboNumber = inputNumber()
            if comboNumber % 1 == 0 and (comboNumber <= #combosCopy and comboNumber > 0) then
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
        writeCombos(file,combosCopy)
    else
        print('No hay combos cargados!')
    end
end

local function registrarVenta(tabl)
    ticket = {}
    total = 0
    local val = false
    while val == false do
        printTableCombos(tabl) -- Printea las opciones de menu disponibles
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


function printTableCombos(tabl)
    for i,v in ipairs(tabl) do
      for key,combo in pairs(v) do
          print(i..' - '..key..' - $'..combo)
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

function main()
    combos = getCombos('combos.csv')
    caja = 0
    val = false
    ventasTotales = {}
    while val == false do
        os.execute('cls')   
        printMenu()
        print('Elija su opcion: ')
        opcionUsuario = inputNumber()
        while opcionUsuario > 8 or opcionUsuario <= 0 do
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
            printTableCombos(ticket)
            cajaFile = io.open('caja.csv','a')
            cajaFile:write(os.date('%x')..','..venta..'\n')
            cajaFile:close()
            if not(volverAlMenu()) then
               val = false 
            end
        elseif opcionUsuario == 2 then -- cambiar precio de los combos
            changePrice('combos.csv')
            combos = getCombos('combos.csv')
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
        elseif opcionUsuario == 4 then -- cierra la caja, muestra lo recaudado y sale del programa
            val = true
            print('Cerro la caja, hoy se recaudo: '..caja..' pesos')
        elseif opcionUsuario == 5  then -- borrar combo
                deleteCombo('combos.csv')
                combos = getCombos('combos.csv')
                if not(volverAlMenu()) then
                    val = false 
                end
        elseif opcionUsuario == 6 then
            writeCombo('combos.csv')
            combos = getCombos('combos.csv')
        elseif opcionUsuario == 7 then -- salir del programa
            val = true 
        end
        end
        print(ventas)
end
main()
