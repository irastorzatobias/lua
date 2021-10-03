print('Cantidad de empleados a cargar: ')
cantEmpleados = tonumber(io.read())
nombre = ''
cantHoras = 0
precioXHora = 20
codigoEmpleado = 0
sueldoBruto = 0
descuento = 0
sueldoNeto = 0
for i = 0, cantEmpleados - 1 do
    print('Nombre empleado: '..i + 1)
    nombre = io.read()
    print('Cantidad de horas trabajadas: ')
    cantHoras = tonumber(io.read())
    repeat
        print('Codigo del empleado (0,1,2): ')
        codigoEmpleado = tonumber(io.read())
    until codigoEmpleado == 0 or codigoEmpleado == 1 or codigoEmpleado == 2 
    
    sueldoBruto = precioXHora * cantHoras
    if codigoEmpleado == 0 then
        descuento = sueldoBruto * 0.10
        sueldoNeto = sueldoBruto - descuento
    elseif codigoEmpleado == 1 then
        descuento = sueldoBruto * 0.15
        sueldoNeto = sueldoBruto - descuento
    elseif codigoEmpleado == 2 then
        descuento = sueldoBruto * 0.20
        sueldoNeto = sueldoBruto - descuento
    end
    print('Sueldo neto empleado '..i..' '..sueldoNeto)
end


