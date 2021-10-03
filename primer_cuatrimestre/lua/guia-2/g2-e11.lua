print('Ingrese un caracter')
valor = io.read()

if string.lower(valor) == 'a' or string.lower(valor) == 'e' or string.lower(valor) == 'i' or string.lower(valor) == 'o' or string.lower(valor) == 'u' then
    print('Es una vocal')
elseif valor == "+" or valor == "-" or valor == "*" or valor == "/" then
    print('Simbolo relacionado a operacion matematica')
else 
    print('Consonante')
end

