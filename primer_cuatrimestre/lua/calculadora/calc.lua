--[[ Tobias Irastorza - Comision B ]]

print('-- CALCULADORA LUA --')
print('Ingrese el primer numero: ')
num1 = tonumber(io.read())
print('Ingrese el primer operador: ')
op1 = io.read()
print('Ingrese el segundo numero: ')
num2 = tonumber(io.read())
print('Ingrese el segundo operador: ')
op2 = io.read()
print('Ingrese el tercer numero: ')
num3 = tonumber(io.read())
print('Ingrese el tercer operador')
op3 = io.read()
print('Ingrese el cuarto numero: ')
num4 = tonumber(io.read())
firstResult = 0
secondResult = 0
thirdResult = 0

print(1 / num2)
if op2 == '*' or op2 == '/' then
    if op2 == '*' then
        thirdResult = num2 * num3
    end
    if op2 == '/' then
        thirdResult = num2 * (1 / num3)
    end
    if op1 == '*' then
        thirdResult = thirdResult * num1
    end
    if op3 == '*' then
       thirdResult = thirdResult * num4 
    end
    if op1 == '/' then
        thirdResult = num1 * (1 / thirdResult)
    end
    if op3 == '/' then
        thirdResult = thirdResult * (1 / num4)
    end
    if op1 == '+' then
        thirdResult = thirdResult + num1
    elseif op1 == '-' then
        thirdResult = num1 - thirdResult
    end
    if op3 == '+' then
        thirdResult = thirdResult + num4
    elseif op3 == '-' then
        thirdResult = thirdResult - num4
    end
end

if op2 == '+' then
    if (op1 == '*' or op1 == '/') then
        if op1 == '*' then
            firstResult = num1 * num2
        elseif op1 == '/' then
            firstResult = num1 * (1 / num2)
        end
    end
    if op3 == '*' or op3 == '/' then
        if op3 == '*' then
            secondResult = num3 * num4
        elseif op3 == '/' then
            secondResult = num3 * (1 / num4)
        end
    end
    if op1 == '+' then
        firstResult = num1 + num2        
    elseif op1 == '-' then
        firstResult = num1 - num2
    end
    if op3 == '+' then
        secondResult = num3 + num4
    elseif op3 == '-' then
        secondResult = num3 - num4    
    end
thirdResult = firstResult + secondResult
end

if op2 == '-' then
    if (op1 == '*' or op1 == '/') then
        if op1 == '*' then
            firstResult = num1 * num2
        elseif op1 == '/' then
            firstResult = num1 * (1 / num2)
        end
    end
    if op3 == '*' or op3 == '/' then
        if op3 == '*' then
            secondResult = num3 * num4
        elseif op3 == '/' then
            secondResult = num3 * (1 / num4)
        end
    end
    if op1 == '+' then
        firstResult = num1 + num2        
    elseif op1 == '-' then
        firstResult = num1 - num2
    end
    if op3 == '+' then
        secondResult = num3 + num4
    elseif op3 == '-' then
        secondResult = num3 - num4    
    end
    thirdResult = firstResult - secondResult
end

print('Resultado',num1,op1,num2,op2,num3,op3,num4)
print(thirdResult)