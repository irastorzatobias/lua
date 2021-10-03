function ingreseFecha()
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
--print(ingreseFecha())

function validacion(dia,mes,anio)
    if mes<1 or mes>12 or dia<1 or dia>31 or ((mes==4 or mes==6 or mes==9 or mes==11) and dia>30) or (dia>29 and mes==2) or 
    ((dia==29 and mes==2) and ((anio%100==0 and anio%400~=0) or (anio%100~=0 and anio%4~=0))) then
        result="Fecha invalida capo."
    else
        result="Fecha valida"
    end
    return result
end
--print(validacion(ingreseFecha()))

saludo = 'hola'
print(saludo:find '.')