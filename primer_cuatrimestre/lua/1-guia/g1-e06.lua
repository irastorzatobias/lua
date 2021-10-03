require "math"
print('Ingrese el radio del circulo: ')
radio = io.read()
pi = math.pi
area = pi* math.pow(radio, 2)
perimetro = 2 * pi * radio

print('El radio es: '..radio)
print('El perimetro de su circulo es: '..perimetro..' cm y el area: '..area..' cm')