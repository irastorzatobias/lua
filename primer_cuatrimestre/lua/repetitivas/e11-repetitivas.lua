
edadPromedio = 0 
acum = 0
edadMayor = 0
edadMenor = 999
i = 0

repeat
    print('Nombre de la persona: '..i + 1)
    nombre = io.read()
    if (nombre == 'fin') or (nombre == 'FIN') then 
        print('Fin del programa')
    else
        print('Edad: ') 
        edad = tonumber(io.read())
        if edad > edadMayor then
            edadMayor = edad     
        elseif edad < edadMenor then
            edadMenor = edad
        end
        acum = acum + edad
        i = i + 1
    end
until (nombre == 'FIN' or nombre == 'fin')

promedio = acum / i
print('Cantidad de nombres ingresados: '..i)
print('Promedio edad: '..promedio)
print('Mayor: '..edadMayor)
print('Mayor: '..edadMenor)

