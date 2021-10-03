nombres = {}
peso = {}
altura = {}
posPesado = 0
posBajo = 0 
masPesado = 0
masBajo = 999
for i = 0, 1 do
    print('Ingrese nombre de la persona '..i)
    nombres[i] = io.read()
    print('Ingrese su peso: ')
    peso[i] = tonumber(io.read())
    print('Ingrese su altura: ')
    altura[i] =  tonumber(io.read())
    if peso[i] > masPesado then
        posPesado = i
        masPesado = peso[i]
    end
    if altura[i] < masBajo then
        posBajo = i
        masBajo = altura[i]
    end
end

print('La persona mas pesada es: '..nombres[posPesado])
print('La persona mas baja es: '..nombres[posBajo])




