print('FACTORIAL DE: ')
fact = tonumber(io.read())
result = 1
for i = 1, fact do
    if fact == 0 then
        result = 1
    elseif fact > 0 then
        result = result * i
    elseif fact < 0 then
        print('No está definido un factorial para ese numero')
        break
    end
end
print(result)

