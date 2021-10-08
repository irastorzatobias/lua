-- REALIZAR CUADRATICAS
require 'funciones'

function operadoresCuadratica() 
    num1 = valFloat('Ingrese el valor de a: ')
    num2 = valFloat('Ingrese el valor de b: ')
    num3 = valFloat('Ingrese el valor de c: ')
    return num1,num2,num3
end

function discriminante(a,b,c)
    return (b^2)-(4*a*c)
end



function checkDiscriminante(dis)
    if dis > 0 then 
       return 2
    elseif dis == 0 then
        return 1 
    else
        return -1
    end
end


function resolveCuadratica()
    a,b,c = operadoresCuadratica()
    resDiscriminante = discriminante(a,b,c)
    cDiscriminante = checkDiscriminante(resDiscriminante)
    if cDiscriminante == 1 then
        x1 = ((-b) + (math.sqrt(resDiscriminante))) / (2 * a)
        xv = (-b) / (2 * a)
        yv = a*(xv^2) + b * xv + c 
        print('X1: '..x1..'\nXV: '..xv..'\nYV: '..yv..'\nCorte con Y: '..c)
        if (a > 0) then
            print('Creciente')
        else
            print('Decreciente')
        end
    elseif cDiscriminante == 2 then
        x1 = ((-b) + (math.sqrt(resDiscriminante))) / (2 * a) 
        x2 = ((-b) - (math.sqrt(resDiscriminante))) / (2 * a)
        xv = (-b) / (2 * a)
        yv = a*(xv^2) + b * xv + c
        if (a > 0) then
            print('Creciente')
        else
            print('Decreciente')
        end
        print('X1: '..x1,'X2: '..x2..'\nXV: '..xv..'\nYV: '..yv..'\nCorte con Y: '..c)
    else
        print('No tiene solucion en los reales')
    end
end 
 

resolveCuadratica()

