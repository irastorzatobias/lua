
file = io.open('inventario.txt','r')
content = file:read()
i,j = content:find(',')

print(i,j)