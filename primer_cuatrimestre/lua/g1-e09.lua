print('-- RESTAURANTE --')
print('a. Hamburguesa completa          30.50 -- INGRESE LA CANTIDAD QUE CONSUMIO')
hambCompleta = io.read()
print('b. Hamburguesa comun             23.50 -- INGRESE LA CANTIDAD QUE CONSUMIO')
hambComun = io.read()
print('c. Papas fritas                  12.50 -- INGRESE LA CANTIDAD QUE CONSUMIO')
papasFritas = io.read()
print('d. Sandwich de milanesa          40.00 -- INGRESE LA CANTIDAD QUE CONSUMIO')
milanesa = io.read()
print('e. Cerveza                       23.00 -- INGRESE LA CANTIDAD QUE CONSUMIO')
cerveza = io.read()
print('f. Gaseosa                       13.50 -- INGRESE LA CANTIDAD QUE CONSUMIO')
gaseosa = io.read()

cantTotal = hambCompleta * 30.50 + hambComun * 23.50 + papasFritas * 12.50 + milanesa * 40 + cerveza * 23.00 + gaseosa * 13.50

if cantTotal > 0 then
    print('Su cuenta es de: '..cantTotal..' pesos')
else 
    print('No consumio nada')
end
