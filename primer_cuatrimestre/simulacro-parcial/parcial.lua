print("--- MC DONAL'S ---")
print("-- MENU --")
print('-- COMBOS --')
print('1.Combo grande Carne $250\n2.Combo Mediano Carne $200\n3.Combo Grande Pollo $220,\n4.Combo Mediano Pollo $180')
print('1.Combo grande carne, ingrese cantidad, de no consumirlo, ingresar 0: ')
grandeCarne = tonumber(io.read())
print('2.Combo mediano carne, ingrese cantidad, de no consumirlo, ingresar 0: ')
medianoCarne = tonumber(io.read())
print('3.Combo grande pollo, ingrese cantidad, de no consumirlo, ingresar 0: ')
grandePollo = tonumber(io.read())
print('4.Combo mediano pollo, ingrese cantidad, de no consumirlo, ingresar 0: ')
medianoPollo = tonumber(io.read())

print('-- BEBIDAS --')
print('5. Coca\n6.Coca sin azucar\n7.Lima')

cantBebidas = tonumber(io.read())

resultadoFinal = grandeCarne * 250 + medianoCarne * 200 + grandePollo * 220 + medianoPollo * 180
print('Debe abonar '..resultadoFinal..' pesos')  

