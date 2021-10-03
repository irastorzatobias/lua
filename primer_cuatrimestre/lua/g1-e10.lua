print('-- VALOR PROPIEDAD --')
print('Ingrese el valor de la propiedad a adquirir: ')
valorProp = io.read()
comision = valorProp * 0.05
gastosEscribano = valorProp * 0.07
valorTotal = valorProp + comision + gastosEscribano

print('La propiedad vale: '..valorProp)
print('La comision de la inmobiliaria es de: '..comision)
print('Los gastos relacionados a la escribania: '..gastosEscribano)
print('Precio final: '..valorTotal)

