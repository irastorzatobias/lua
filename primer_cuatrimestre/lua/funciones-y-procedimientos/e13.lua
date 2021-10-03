function min_y_max(a,b,c)
    result = {a,b,c}
    table.sort(result)
    mayor = c
    menor = a
    print('Numero mayor: '..mayor)
    print('Numero menor: '..menor)
end

min_y_max(10,20,30)