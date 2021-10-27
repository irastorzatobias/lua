-- El dueño de un bar ha comprado refrescos, cerveza y vino por importe de $500 (sin impuestos). El valor
-- del vino es $60 menos que el de los refrescos y de la cerveza conjuntamente. Teniendo en cuenta que los
-- refrescos deben pagar un impuesto del 6%, por la cerveza del 12% y por el vino del 30%, lo que hace que
-- la factura total con impuestos sea de $592.40 , calcular la cantidad invertida en cada tipo de bebida.
require 'funciones'


function cantidad_invertida()
    impVino = valFloat('Ingrese el impuesto del vino')
    impCerveza = valFloat('Ingrese el impuesto de la cerveza')
    impRefresco = valFloat('Ingrese el impuesto del refresco')
    difVino = valFloat('Cuanto hay de diferencia entre el vino, los refrescos y cerveza (en conjunto): ')
    total_s_impuestos = valFloat('Ingrese el valor sin impuestos de la factura: ')
    total_c_impuestos = valFloat('Ingrese el valor con impuestos de la factura: ')
    vino = refresco + cerveza - 60
    refresco = 0
    cerveza = 0

end    

-- Tres variables, una representa la dif entre cerveza y refresco, otra el total, y otra los impuestos pagados



print(cantidad_invertida())

