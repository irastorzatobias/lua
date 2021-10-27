-- El dueño de un bar ha comprado refrescos, cerveza y vino por importe de $500 (sin impuestos). El valor
-- del vino es $60 menos que el de los refrescos y de la cerveza conjuntamente. Teniendo en cuenta que los
-- refrescos deben pagar un impuesto del 6%, por la cerveza del 12% y por el vino del 30%, lo que hace que
-- la factura total con impuestos sea de $592.40 , calcular la cantidad invertida en cada tipo de bebida.
require 'funciones'


function cantidad_invertida()
    print('ECUACIONES (V vino, C cerveza, R refresco):\n(1) V = R + C - 60\n(2) R + C + V = 500\n(3) 0.06R + 0.12C + 0.3V = 92.40')
    local difVino = valFloat('Cuanto hay de diferencia entre el vino y los refrescos y cerveza (en conjunto): ')
    local total_s_impuestos = valFloat('Ingrese el valor sin impuestos de la factura: ')
    local impuestos = valFloat('Ingrese cuanto pago de impuestos: ')
    local a = (total_s_impuestos + difVino) / 2
    local b = a - difVino 
    local refresco = ((0.12 * a) + (0.3 * b) - 92.40) / 0.06 -- Tercera ecuacion del sistema
    local cerveza = a - refresco -- Ecuacion que se logro de despejar C, de la ecuacion 1, y 2
    local vino = refresco + cerveza - 60 -- Primera ecuacion
    print('\nCantidad invertida en cada bebida:\nVino: ' .. vino .. '\nCerveza: ' .. cerveza .. '\nRefresco: ' .. refresco)

    print('-- VERIFICACION --')
    -- Primera verificacion
    if (vino == (refresco + cerveza - 60)) then
        print('Primera ecuacion verificada, V es igual  R + C - 60')
    else
        print('Error resultados, se esperaba obtener '..vino..' y se obtuvo '..(refresco+cerveza - 60))
    end
    -- Segunda verificacion
    if (vino + refresco + cerveza) == total_s_impuestos then
        print('Segunda ecuacion verificada, la suma de los resultados individuales es igual al total de la compra')
    else 
        print('Error resultados, se esperaba obtener '..total_s_impuestos..' y se obtuvo '..vino+refresco+cerveza)
    end
    -- Tercera verificacion
    if (0.06 * refresco + 0.12 * cerveza + 0.3 * vino) == impuestos then
        print('Tercera ecuacion verificada, la suma de los impuestos individuales es igual a la totalidad de los impuestos pagados')
    else 
        print('Error resultados, se esperaba obtener '..impuestos..' y se obtuvo '..(0.06 * refresco + 0.12 * cerveza + 0.3 * vino))
    end
end    

-- Tres variables, una representa la dif entre cerveza y refresco, otra el total, y otra los impuestos pagados



print(cantidad_invertida())

