print('-- CALCULO PERIMETRO Y AREA RECTANGULO --')
print('Ingrese la base:')
base = io.read()
print('Ingrese la altura:')
altura = io.read()
perimetro = (2 * base) + (2 * altura)
area = base * altura
print('El area del rectangulo ingresado es de: '..area..' cm')
print('El perimetro del rectangulo ingresado es de: '..perimetro..' cms')