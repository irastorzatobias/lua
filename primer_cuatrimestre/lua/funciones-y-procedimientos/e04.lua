-- Factorial de un numero numero

function factorial(num)
    result = 1
    if num == 0 then
        return 1
    else
        for i=1,num do
            result = result * i
        end
    end
    return result
end