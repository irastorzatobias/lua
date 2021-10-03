function valFormatoFecha()
    fecha=""
    while #fecha~=10 or string.sub(fecha,3,3)~="/" or string.sub(fecha,6,6)~="/" or dia==nil or mes==nil or anio==nil or string.find(fecha,".",1,true)~=nil do 
        print("Ingrese fecha(dd/mm/aaaa): ")
        fecha=io.read()
        dia=tonumber(string.sub(fecha,0,2))
        mes=tonumber(string.sub(fecha,4,5))
        anio=tonumber(string.sub(fecha,7,10))
    end
    return dia,mes,anio   
end

function valFecha(dia,mes,anio)
    if mes<1 or mes>12 or dia<1 or dia>31 or ((mes==4 or mes==6 or mes==9 or mes==11) and dia>30) or (dia>29 and mes==2) or 
    ((dia==29 and mes==2) and ((anio%100==0 and anio%400~=0) or (anio%100~=0 and anio%4~=0))) then
        result="Fecha invalida capo."
    else
        result="Fecha valida"
    end
    return result
end

function fecha_a_edad(dia,mes,anio)
    result=0
    if dia>=tonumber(os.date("%d")) and mes>=tonumber(os.date("%m")) then
        result=(os.date("%Y")-anio)-1
    else
        result=os.date("%Y")-anio
    end
    return result
end

function valStr(mensaje)
    terminar=true
    while terminar do
        print(mensaje)
        str=io.read()
        if(string.lower(str))>="a" and string.lower(str)<="z" then
            terminar=false
        else
            terminar=true
        end
    end
    return str
end

function valInt(mensaje,min,max)
    numInt=nil
    while (numInt==nil or numInt<min or numInt>max or numInt%1~=0)  do
        print (mensaje)
        numInt=tonumber(io.read())
    end
    return numInt
end

function valFloat(mensaje,min,max)
    numFloat=nil
    while numFloat==nil or numFloat<0 do
    print (mensaje)
        numFloat=tonumber(io.read())
    end
    return numFloat
end

function seguirPrograma()
    sigue = true
    while sigue do
        seguir = valStr('Ingrese cualquier tecla para continuar, "Q" para finalizar')
        if seguir:lower() == 'q' then
            sigue = false
            return sigue
        else 
            return sigue
        end
    end
end

function calculoLineal(m, x, o)
-- m pendiente, x valor x, o ordenada al origen
    return m * x + o

end
