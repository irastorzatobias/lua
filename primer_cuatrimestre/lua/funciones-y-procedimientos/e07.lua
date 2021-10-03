function es_bisiesto(anio)
    return (anio % 400 == 0 and anio % 100 == 0) or (anio % 4 == 0 and anio % 100 ~= 0)
end

function fecha_valida()
    dias = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
    fecha=""
    while #fecha~=10 or string.sub(fecha,3,3)~="/" or string.sub(fecha,6,6)~="/" or dia==nil or mes==nil or anio==nil or string.find(fecha,".",1,true)~=nil do 
        print("Ingrese fecha(dd/mm/aaaa): ")
        fecha=io.read()
        dia=tonumber(string.sub(fecha,0,2))
        mes=tonumber(string.sub(fecha,4,5))
        anio=tonumber(string.sub(fecha,7,10))
    end
    if es_bisiesto(anio) then
        dias[2] = dias[2] + 1
    end
    while dia > dias[mes] or dia < 0 do
        print('Ingreso un dia que no corresponde al mes, ingrese dia valido: ')
        dia = tonumber(io.read())
    end
    return {
        ['dia'] = dia,
        ['mes'] = mes,
        ['anio'] = anio
    }
end


