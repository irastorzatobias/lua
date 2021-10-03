function descendente(a,b,c)
    arr = {a,b,c}
    
    table.sort(arr)

    arr[1], arr[2], arr[3] = arr[3], arr[2], arr[1]
    for i = 1, 3, 1 do
        print(arr[i])
    end 
end

print(descendente(1,2,3))