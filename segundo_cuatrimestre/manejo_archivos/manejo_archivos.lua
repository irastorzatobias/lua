-- Modos: r w, a, b (binario), r+ (actualizar, preserva el texto existente), w+ (actualizar, elimina el texto existente), 
-- a+(modo añadir, preserva el texto existente y añade al final })


archivo = io.open('saludo.txt', 'r')
tablita = {}
-- leyendo primer linea
print('Primer linea')
print(archivo:read())
print('Stop primer linea')
-- leyendo linea por linea
for line in archivo:lines() do
    print(line)
    table.insert(tablita, line)
end
archivo:close()

for i,v in ipairs(tablita) do
    print(i,v)
end
-- archivo = io.open('saludo.txt', 'a')
-- archivo:write('\npepito es un capote')
-- archivo:close()







