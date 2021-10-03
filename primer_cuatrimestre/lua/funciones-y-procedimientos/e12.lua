function min_y_max(a,b,c)
    result = {a,b,c}
    table.sort(result)
    return c, a
end

print(min_y_max(10,20,30))