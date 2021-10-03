print('-- BILLETES --')
print('Cantidad de dinero que posee en pesos: ')
dinero = tonumber(io.read())
billeMil = 0
billeQuinientos = 0
billeCien = 0
billeCincuenta = 0
billeVeinte = 0
billeDiez = 0

billeMil = dinero // 1000
resto = dinero % 1000
billeQuinientos  = resto // 500
resto = resto % 500
billeCien = resto // 100
resto = resto % 100
billeCincuenta = resto // 50
resto = resto % 50
billeVeinte = resto // 20
resto = resto % 20
billeDiez = resto // 10

print(billeMil)
print(billeQuinientos)
print(billeCien)
print(billeCincuenta)
print(billeVeinte)
print(billeDiez)





