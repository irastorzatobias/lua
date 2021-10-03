print('-- CAR ALGORITHM -- ')
print('km en la ultima recarga: ')
kmAntes = io.read()
print('combustible recargado ultima vez: ')
fuel = io.read()


print('km actual: ')
kmActual = io.read()
print('nafta actual: ')
actualFuel = io.read()


print('GASTO DE NAFTA CADA 100 KM')
resultado = ((fuel - actualFuel) / (kmActual - kmAntes)) * 100

print(resultado)







