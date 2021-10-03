print('-- ALUMNOS --')
print('Ingrese la cantidad de alumnos desaprobados: ')
desaprobados = io.read()
print('Ingrese la cantidad de alumnos aprobados: ')
aprobados = io.read()
print('Ingrese la cantidad de alumnos sobresalientes: ')
sobresalientes = io.read()
totalAlumn = desaprobados + aprobados + sobresalientes

print('Un %'..((aprobados + sobresalientes) * 100) / totalAlumn..' de los alumnos aprobo y promocionó la materia')
print('Un %'..((desaprobados * 100) / totalAlumn)..' desaprobó la materia')
