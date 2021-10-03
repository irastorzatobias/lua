function entero(num)
    -- Ejercicio 10 guia
    stringNum = tostring(num)
    numArray = {}
    result = 0
    i = 1
    if num < 0 then
        return -1
    else
        -- gmatch(.) obtiene caracter por caracter en string
        for s in stringNum:gmatch('.') do
            -- appendeo a la lista el elemento en la posicion i convertido a numero
            table.insert( numArray,i,tonumber(s))
            -- voy acumulando resultado
            result = result + numArray[i]
            i = i + 1
        end        
    end
    return result % 7

end

print(entero(513))