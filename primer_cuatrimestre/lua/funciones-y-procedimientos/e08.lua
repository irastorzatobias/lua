require('e08')
function calcular_edad()
    fechaNacimiento = fecha_valida()
    todayDay = tonumber(os.date("%d"))
    todayMonth = tonumber(os.date("%m"))
    todayYear = tonumber(os.date("%Y"))
    if  fechaNacimiento['mes'] > todayMonth and todayYear > fechaNacimiento['anio'] then -- mes mayor al mes actual
        edad = todayYear - fechaNacimiento['anio'] - 1
    elseif (fechaNacimiento['mes'] == todayMonth or fechaNacimiento['mes'] > todayMonth) and (fechaNacimiento['dia'] > todayDay) and (todayYear == fechaNacimiento['anio']) then
        return 0
    elseif (fechaNacimiento['mes'] == todayMonth) and (fechaNacimiento['dia'] == todayDay) then -- mes igual e dia igual
        edad = todayYear - fechaNacimiento['anio']
    elseif (fechaNacimiento['mes'] == todayMonth) and (fechaNacimiento['dia'] < todayDay) then
        edad = todayYear - fechaNacimiento['anio'] - 1
    elseif (fechaNacimiento['mes'] < todayMonth) then
        edad = todayYear - fechaNacimiento['anio']
    end

    return edad
end

