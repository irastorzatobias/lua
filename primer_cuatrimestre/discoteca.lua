-- Discoteca LUA - Primer parcial - Tobias Irastorza - Comision B

local function inputInt(message)
    --- Funcion para input de entero
    local val = false
    print(message)
    local num = tonumber(io.read()) 
    while val == false do
        if num == nil then    
            print('No ingreso un numero, intente nuevamente')
            num = tonumber(io.read())
        elseif num < 0 then
            print('Ingreso un numero menor a 0, intente nuevamente')
            num = tonumber(io.read())
        else
            val = true
            return num
        end
    end
end

local function inputStr(mensaje)
    -- Controla el input de una string, acepta mensaje por parte del usuario
    local val=false
    while val == false do
        print(mensaje)
        str=io.read()
        if(string.lower(str))>="a" and string.lower(str)<="z" then
            val=true
        else
            val=false
        end
    end
    return str:lower()
end

local function contieneValor (tab, val)
    for i, v in ipairs(tab) do
        if v == val then
            return true
        end
    end

    return false
end

local function printMenu()
    local menu = {}
    menu[1] = 'Ingreso de personas'
    menu[2] = 'Cambio de dia'
    menu[3] = 'Ver las promociones del dia'
    menu[4] = 'Recaudacion del dia'
    menu[5] = 'Salir'
    for i,v in ipairs(menu) do
        print(i..' - '..v)
    end
end

local function promoDelDia(dia) -- printea las opciones del dia
    if diaElegido == 'jueves' then
        os.execute('clear')
        print('-- JUEVES --')
        print('Entrada 5% de descuento, entran solo mayores de 18 años')
    elseif diaElegido == 'viernes' then
        os.execute('clear')
        print('-- VIERNES --')
        print('Exclusivo mayores de 20 años, 20% de descuento si son mas de dos parejas')
    elseif diaElegido == 'sabado' then
        os.execute('clear')
        print('-- SABADO --')
        print('Se admiten mayores de 18 años, si son grupos de mas de 4 personas se descuenta un 10% en los mayores de 21')
    elseif diaElegido == 'domingo' then
        os.execute('clear')
        print(' -- DOMINGO -- ')
        print('Mayores de 21 años, 30% de descuento en el total de las entradas, si son mas de 4 personas el descuento es de 15% en la cuarta entrada') 
    end
end

local function generarEntrada(cantPersonas, diaElegido, costoEntrada)
    total = 0
    personas = {}
    promoDelDia(diaElegido)
    if diaElegido == 'jueves' then
        costoEntrada = costoEntrada - costoEntrada * 0.05
        for i = 1,cantPersonas do
            edadAux = inputInt('Ingrese la edad de la persona '..i)
            if edadAux < 18 then
                os.execute('clear')
                print('Persona '..i..' no puede entrar al boliche, es menor, se vuelve al menu principal')
                total = 0
                break
            else
                total = total + costoEntrada
            end
        end
        print('A cobrar: '..total..' pesos')
    elseif diaElegido == 'viernes' then
        for i = 1, cantPersonas do
            edadAux = inputInt('Ingrese la edad de la persona '..i)
            if edadAux < 20 then
                os.execute('clear')
                print('Persona '..i..' no puede entrar al boliche, es menor de 20 años, se vuelve al menu principal')
                total = 0
                break
            elseif cantPersonas >= 4 then
                total = total + costoEntrada - costoEntrada * 0.20
            else
                total = total + costoEntrada
            end
        end
        print('A cobrar: '..total..' pesos')
    elseif diaElegido == 'sabado' then
        for i = 1, cantPersonas do
            edadAux = inputInt('Ingrese la edad de la persona '..i)
            if edadAux < 18 then
                print('Persona '..i..' no puede entrar al boliche, es menor de edad, se vuelve al menu principal')
                total = 0
                break
            elseif cantPersonas >= 4 and edadAux >= 21 then
                total = total + (costoEntrada - costoEntrada * 0.10)
            else
                total = total + costoEntrada 
            end
        end
        print('A cobrar: '..total..' pesos')
    elseif diaElegido == 'domingo' then
        for i = 1, cantPersonas do
            edadAux = inputInt('Ingrese la edad de la persona '..i)
            if edadAux < 21 then
                print('Persona '..i..' no puede entrar al boliche, es menor de 21 años, se vuelve al menu principal')
                total = 0
                break
            elseif cantPersonas >= 4 and i == 4 then
                total = total + (costoEntrada - costoEntrada * 0.15)
            elseif cantPersonas < 4 then
                total = total + (costoEntrada - costoEntrada * 0.30)
            else
                total = total + costoEntrada
            end
        end
        print('A cobrar: '..total..' pesos')
    end
    return total


end 
local function elegirDia() -- funcion para elegir un dia  de la semana, de los disponibles, segun los dias que abra el boliche 
    diasAbierto = {"jueves", "viernes", "sabado", "domingo"}
    diaElegido = inputStr('Ingrese el dia de la semana (jueves, viernes, sabado, domingo): ')
    val = false
    while not contieneValor(diasAbierto, diaElegido) do
        diaElegido = inputStr('El dia ingresado no coincide con los dias en los que abre el boliche, intente nuevamente (jueves, viernes, sabado, domingo): ')
    end
    return diaElegido
end

sigue = 's'
val = false
dia = elegirDia()
costo = 80
totalDelDia = 0
os.execute('clear')
while val == false do
    printMenu()
    opcion = inputInt('Ingrese la opcion: ')
    while opcion < 0 or opcion > 5 do
        os.execute('clear')
        print('No existe esa opcion en el menu, intente nuevamente')
        printMenu()
        opcion = inputInt('')
    end
    if opcion == 1 then
        cantPersonas = inputInt('Cantidad de personas que entran: ')
        totalDelDia = totalDelDia + generarEntrada(cantPersonas, dia, costo)
    elseif opcion == 2 then
        dia = elegirDia()
    elseif opcion == 3 then
        promoDelDia(dia)
    elseif opcion == 4 then
        print('Recaudacion hasta el momento: '..totalDelDia)
    elseif opcion == 5 then
        val = true
    end    
end
os.execute('clear')

print('Programa finalizado, recaudacion del dia: '..totalDelDia)