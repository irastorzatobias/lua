print(' -- PROMEDIO ALUMNO --')
i = 0
nota = 0 
acum = 0
promedio = 0
mayor = 0
menor = 0
repeat
    print('Ingrese la nota numero '..i + 1)
    nota = tonumber(io.read())
    if nota > 0 or nota <= 10 then
        
        if i == 0 then
            mayor = nota
            menor = nota
        end
        
        if nota > mayor then
            mayor = nota
        elseif nota < menor then
            menor = nota
        end
    acum = nota + acum
    else
        print('No ingreso un numero')
    end

    i = i + 1

until nota == 0
promedio = acum / (i - 1)

print('PROMEDIO: '..promedio)
print('NOTA MAS ALTA: '..mayor)
print('NOTA MAS BAJA: '..menor)




