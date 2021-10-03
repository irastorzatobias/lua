
apellido = ''
nombre = ''
edad = 0
sueldo = 0
acum = 0
promedio = 0
i = 0
while not(apellido == 'FIN') or not(apellido == 'fin') do
    print('Ingrese el apellido de la persona '..i)
    apellido = (io.read())
    if not(apellido =='FIN') or not(apellido == 'FIN') then 
        print('Ingrese el nombre: ')
        nombre = io.read()
        print('Ingrese la edad: ')
        edad = tonumber(io.read())
        print('Ingrese el sueldo: ')
        sueldo = tonumber(io.read())
        if edad > 30 and edad < 50 then
            acum = acum + sueldo
        end
    end
    i = i + 1
end

print(i)

