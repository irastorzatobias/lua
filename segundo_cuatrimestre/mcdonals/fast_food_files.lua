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


local function printCombos(file)
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


function writeCombos(file, combos)  
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

function writeCombo(file)
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


function deleteCombo(file)
    --- Borra combo especifico
    val = false
    combosCopy = getCombos(file)
    if combosCopy >= 1 then
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




local function main() 

end
combitos = {
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


deleteCombo('test.csv')
writeCombo('test.csv')
