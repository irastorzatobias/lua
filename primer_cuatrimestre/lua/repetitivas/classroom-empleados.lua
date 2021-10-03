acumsueldos=0
contar=0
repeat
    terminar=true
    while terminar do
    print "ingrese Apellido: "
    apellido=io.read()
        if (string.lower(apellido)>="a" and string.lower(apellido)<="z") then
        terminar = false
        else
        terminar = true
        end
    end
    if string.upper(apellido)=="FIN" then
    print "Carga Finalizada por el usuario"    
    else
            terminar =true
            while terminar do
                print "ingrese Nombre: "
                nombre=io.read()
                    if (string.lower(nombre)>="a" and string.lower(nombre)<="z") then
                    terminar = false
                    else
                    terminar = true
                    end
            end
            edad=nil 
            while (edad==nil or edad<18 or edad>70 or edad%1~=0)  do
                   print ("Ingrese la edad del empleado: ")
                   edad=tonumber(io.read())
            end                 
            antiguedad=nil
            controlant=edad-18
            while (antiguedad==nil or edad%1~=0 or antiguedad>controlant or antiguedad<0)  do
                print ("Ingrese la Antiguedad del empleado: ")
                antiguedad=tonumber(io.read())
            end         
            salario=nil
            while (salario==nil or salario<0)  do
                print ("Ingrese el salario del empleado: ")
                salario=tonumber(io.read())
            end
                        
            if edad>= 30 and edad<=50 then
                acumsueldos=acumsueldos+salario
                contar=contar+1
            end     




    end

until string.upper(apellido)=="FIN"
promedio=acumsueldos/contar
print ("El promedio de sueldos seria: "..promedio..".")