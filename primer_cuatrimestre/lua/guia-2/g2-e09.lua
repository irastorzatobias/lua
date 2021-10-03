print('-- ESTABLECIMIENTO --')
print('lugar de nacimiento: ')
birthPlace = io.read()
print('edad: ')
edad = tonumber(io.read())
print('estudios primarios completos? (s/n)')
estudiosPrimarios = io.read()

if birthPlace ~= 'argentina' or edad < 13 or estudiosPrimarios == 'n' then
    print('No puede ingresar al establecimiento')
else 
    print('Bienvenido!')
end