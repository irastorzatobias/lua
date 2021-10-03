nombres = {}
apellidos = {}
salarios = {}
edades = {}
antiguedades = {}
i = 0
acumSueldos = 0
promedioSueldos = 0
contar = 0
repeat
    terminar = true
    while terminar do
        print "ingrese Apellido: "
        apellido = io.read()
        if (string.lower(apellido) >= "a" and string.lower(apellido) <= "z") then
            terminar = false
        else
            terminar = true
            print('ingreso un valor incorrecto, intente de nuevo')
        end
    end
    if string.lower(apellido) == "fin" then
        print "Carga Finalizada por el usuario"
    else
        apellidos[i] = apellido -- add lastname
        terminar = true
        while terminar do
            print('Ingrese nombre: ')
            nombre = io.read()
            if (string.lower(nombre) >= "a" and string.lower(nombre) <= "z") then
                terminar = false
            else
                print('ingreso un valor incorrecto, intente de nuevo')
                terminar = true
            end
        end
        nombres[i] = nombre -- add name
        edad = nil
        while (edad == nil or edad < 18 or edad > 70 or edad % 1 ~= 0) do
            print("Ingrese la edad del empleado: ")
            edad = tonumber(io.read())
            if (edad == nil or edad < 18 or edad > 70 or edad % 1 ~= 0) then
                print('Ingreso una edad incorrecta, intente de nuevo')
            end
        end
        edades[i] = edad -- add edad
        antiguedad = nil
        controlant = edad - 18
        while (antiguedad == nil or edad % 1 ~= 0 or antiguedad > controlant or antiguedad < 0) do
            print("Ingrese la Antiguedad del empleado: ")
            antiguedad = tonumber(io.read())
            if (antiguedad == nil or edad % 1 ~= 0 or antiguedad > controlant or antiguedad < 0) then
                print('Ingreso una antiguedad incorrecta, intente de nuevo')
            end
        end
        antiguedades[i] = antiguedad
        salario=nil
        while (salario==nil or salario<0)  do
            print ("Ingrese el salario del empleado: ")
            salario=tonumber(io.read())
            if (salario ==nil or salario < 0) then
                print('ingreso un valor nulo o menor que 0, intente de nuevo')
            end
        end
        salarios[i] = salario  
        if edad>= 30 and edad<=50 then -- acumulador salarios mayores que 30 y menores que 50.
            acumSueldos= acumSueldos + salarios[i]
            contar=contar+1
        end     
    end
    i = i + 1

until string.lower(apellido) == 'fin'

if contar == 0 then
    print('No hay sueldos que promediar')
else
    promedioSueldos = acumSueldos / contar 
    print('Promedio sueldos: '..promedioSueldos)
end    
    -- print(table.getn(apellidos)) --  Get the length of a list

print('nombre      apellido    edad     salario antiguedad')
for i=0,#nombres do
    print(nombres[i], apellidos[i], edades[i], salarios[i], antiguedades[i])
end

