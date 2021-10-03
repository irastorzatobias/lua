print('-- PORCENTAJE DE UN IMPORTE --')
print('Ingrese el importe:')
importe = io.read()
print('Ingrese el porcentaje que desea sacar:')
porcentaje = io.read()

resultado = (importe * porcentaje) / 100

print(importe..' con un descuento de '..porcentaje..' da un resultado de '..resultado)