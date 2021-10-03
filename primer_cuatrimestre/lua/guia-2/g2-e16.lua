print('Ingrese la edad de la persona: ')
edad = tonumber(io.read())
print('Ingrese el genero de la persona: ')
genero = io.read()

if string.lower(genero) == 'hombre' then
    if edad >= 0 and edad <= 6 then
     print('Infante')
    elseif edad > 6 and edad <= 12 then
       print('Ninio')
    elseif edad > 12 and edad <= 18 then
        print('Adolescente')
    elseif edad > 18 and edad < 30 then
        print('Joven')
    elseif edad >= 30 and edad <= 65 then
        print('adulto')
    elseif edad > 65 then
        print('Anciano')
end
elseif string.lower(genero) == 'mujer' then
    if edad >= 0 and edad <= 6 then
        print('Una infante')
       elseif edad > 6 and edad <= 12 then
          print('Se trata de una niña')
       elseif edad > 12 and edad <= 18 then
           print('Se trata de una adolescente')
       elseif edad > 18 and edad < 30 then
           print('Se trata de una joven')
       elseif edad >= 30 and edad <= 65 then
           print('Se trata de una persona femenina adulta')
       elseif edad > 65 then
           print('Anciana')
   end
end