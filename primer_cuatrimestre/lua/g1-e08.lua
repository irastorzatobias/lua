print('-- CLIMATOLOGIA --')
print('Ingrese la temperatura en escala celsius: ')
tempCelsius = io.read()
tempFahrenheit = (9/5) * tempCelsius + 32
print('Ingrese la cantidad de pulgadas en agua: ')
pulgadas = io.read()

milimetros = 25.5 * pulgadas


print(tempCelsius..' grados celsius representan: '..tempFahrenheit..' grados fahrenheit')
print(pulgadas..' pulgadas representan '..milimetros..' milimetros de agua')

