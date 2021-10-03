contador = 0
repeat
    char = io.read()
    print('Caracter ingresado: '..char)
    contador = contador + 1
until contador == 0 or char == 'x' or char == 'X'

print('Fin del programa, el contador llego a 20 o se ingreso una X')

