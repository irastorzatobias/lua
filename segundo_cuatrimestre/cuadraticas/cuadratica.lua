-- REALIZAR CUADRATICAS
require 'funciones'

function operadoresCuadratica() 
    num1 = valFloat('Ingrese el valor de a: ')
    num2 = valFloat('Ingrese el valor de b: ')
    num3 = valFloat('Ingrese el valor de c: ')
    op1 = valOp('Operacion entre a y b: ')
    op2 = valOp('Operacion entre b y c: ')
    -- print(a..'x2'..opA..b..'x'..opB..c)
    return num1,num2,num3,op1,op2
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
    a,b,c,opA,opB = operadoresCuadratica()
    resDiscriminante = discriminante(a,b,c)
    cDiscriminante = checkDiscriminante(resDiscriminante)
    if cDiscriminante == 1 then
        x1 = ((-b) + (b ^ 0.5) - (4*a*c)) / 2 
        return x1
    elseif cDiscriminante == 2 then
        -- print(resDiscriminante)
        -- print(resDiscriminante ^ 0.5)
        -- x1 = (-b) + ((resDiscriminante ^ 0.5) / (2 * a))
        -- x2 = (-b) - (((b ^ 0.5) - (4*a*c)) / 2)
    end
end 
 
resolveCuadratica()