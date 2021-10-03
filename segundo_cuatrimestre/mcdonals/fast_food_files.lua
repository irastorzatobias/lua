require 'functions'
require 'file_methods'
combosFile = io.open('combos.csv','r')




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




testcito = io.open('files.txt','w')

combosFinal = getCombos('combos.csv')
for k,v in pairs(combosFinal[1]) do
    llave = k
    valor = v
end

testcito:write(llave..','..valor)
testcito:close()

print(llave)
print(valor)


