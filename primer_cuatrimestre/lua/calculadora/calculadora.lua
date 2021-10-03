print('-- CALCULADORA LUA --')
print('Ingrese el primer numero: ')
num1 = tonumber(io.read())
print('Ingrese el segundo numero: ')
num2 = tonumber(io.read())
print('Ingrese el tercer numero: ')
num3 = tonumber(io.read())
print('Ingrese el cuarto numero: ')
num4 = tonumber(io.read())
print('Ingrese el primer operador: ')
op1 = io.read()
print('Ingrese el segundo operador: ')
op2 = io.read()
print('Ingrese el tercer operador')
op3 = io.read()
resultado = 0

if (op1 == "+" and op2 == "+" and op3 == "+") then
    print('Works')
    resultado = num1 + num2 + num3 + num4
    print(resultado)
elseif (op1 == '+' and op2 == '+' and op3 == '-' ) then
    print('Works')
    resultado = num1 + num2 + num3 - num4
    print(resultado)
elseif (op1 == '+' and op2 == '-' and op3 == '-' ) then
    print('Works')
    resultado = num1 + num2 - num3 - num4
    print(resultado)
elseif (op1 == '+' and op2 == '-' and op3 == '+' ) then
    print('Works')
    resultado = num1 + num2 - num3 + num4
    print(resultado)
elseif (op1 == '+' and op2 == '+' and op3 == '*' ) then
    print('Works')
    resultado = num1 + num2 + (num3 * num4)
    print(resultado)
elseif (op1 == '+' and op2 == '*' and op3 == '*' ) then
    print('Works')
    resultado = num1 + num2 * num3 * num4
    print(resultado)
elseif (op1 == '+' and op2 == '*' and op3 == '+' ) then
    print('Works')
    resultado = num1 + num2 * num3 + num4
    print(resultado)
elseif (op1 == '+' and op2 == '+' and op3 == '/' ) then
    print('Works')
    resultado = num1 + num2 + num3 / num4
    print(resultado)
elseif (op1 == '+' and op2 == '/' and op3 == '/' ) then
    print('Works')
    resultado = num1 + (num2 / num3) / num4
    print(resultado)
elseif (op1 == '+' and op2 == '/' and op3 == '+' ) then
    print('Works')
    resultado = num1 + (num2 / num3) + num4
    print(resultado)
elseif (op1 == '-' and op2 == '-' and op3 == '-' ) then
    print('Works')
    resultado = num1 - num2 - num3 - num4
    print(resultado)
elseif (op1 == '-' and op2 == '-' and op3 == '+' ) then
    print('Works')
    resultado = num1 - num2 - num3 + num4
    print(resultado)
elseif (op1 == '-' and op2 == '+' and op3 == '+' ) then
    print('Works')
    resultado = num1 - num2 + num3 + num4
    print(resultado)
elseif (op1 == '-' and op2 == '+' and op3 == '-' ) then
    print('Works')
    resultado = num1 - num2 + num3 - num4
    print(resultado)
elseif (op1 == '-' and op2 == '-' and op3 == '*' ) then
    print('Works')
    resultado = num1 - num2 - num3 * num4
    print(resultado)
elseif (op1 == '-' and op2 == '*' and op3 == '*' ) then
    print('Works')
    resultado = num1 - (num2 * num3 * num4)
    print(resultado)
elseif (op1 == '-' and op2 == '*' and op3 == '-' ) then
    print('Works')
    resultado = num1 - (num2 * num3) - num4
    print(resultado)
elseif (op1 == '-' and op2 == '-' and op3 == '/' ) then
    print('Works')
    resultado = num1 - num2 - num3 / num4
    print(resultado)
elseif (op1 == '-' and op2 == '/' and op3 == '/' ) then
    print('Works')
    resultado = num1 - ((num2 / num3) / num4)
    print(resultado)
elseif (op1 == '-' and op2 == '/' and op3 == '-' ) then
    print('Works')
    resultado = num1 - (num2 / num3) - num4
    print(resultado)
elseif (op1 == '*' and op2 == '*' and op3 == '*' ) then
    print('Works')
    resultado = num1 * num2 * num3 * num4
    print(resultado)
elseif (op1 == '*' and op2 == '*' and op3 == '+' ) then
    print('Works')
    resultado = num1 * num2 * num3 + num4
    print(resultado)
elseif (op1 == '*' and op2 == '+' and op3 == '+' ) then
    print('Works')
    resultado = num1 * num2 + num3 + num4
    print(resultado)
elseif (op1 == '*' and op2 == '+' and op3 == '*' ) then
    print('Works')
    resultado = num1 * num2 + num3 * num4
    print(resultado)
elseif (op1 == '*' and op2 == '*' and op3 == '-' ) then
    print('Works')
    resultado = num1 * num2 * num3 - num4
    print(resultado)
elseif (op1 == '*' and op2 == '-' and op3 == '-' ) then
    print('Works')
    resultado = num1 * num2 - num3 - num4
    print(resultado)
elseif (op1 == '*' and op2 == '-' and op3 == '*' ) then
    print('Works')
    resultado = (num1 * num2) - (num3 * num4)
    print(resultado)
elseif (op1 == '*' and op2 == '*' and op3 == '/' ) then
    print('Works')
    resultado = (num1 * num2 * num3) / num4
    print(resultado)
elseif (op1 == '*' and op2 == '/' and op3 == '/' ) then
    print('Works')
    resultado = ((num1 * num2) / num3) / num4
    print(resultado)
elseif (op1 == '*' and op2 == '/' and op3 == '*' ) then
    print('Works')
    resultado = ((num1 * num2) / num3) * num4
    print(resultado)
elseif (op1 == '/' and op2 == '/' and op3 == '/' ) then
    print('Works')
    resultado = ((num1 / num2) / num3) / num4
    print(resultado)
elseif (op1 == '/' and op2 == '/' and op3 == '+' ) then
    print('Works')
    resultado = ((num1 / num2) / num3) + num4
    print(resultado)
elseif (op1 == '/' and op2 == '+' and op3 == '+' ) then
    print('Works')
    resultado = num1 / num2 + num3 + num4
    print(resultado)
elseif (op1 == '/' and op2 == '+' and op3 == '/' ) then
    print('Works')
    resultado = (num1 / num2) + (num3 / num4)
    print(resultado)
elseif (op1 == '/' and op2 == '/' and op3 == '-' ) then
    print('Works')
    resultado = ((num1 / num2) / num3) - num4
    print(resultado)
elseif (op1 == '/' and op2 == '-' and op3 == '-' ) then
    print('Works')
    resultado = (num1 / num2) - num3 - num4
    print(resultado)
elseif (op1 == '/' and op2 == '-' and op3 == '/' ) then
    print('Works')
    resultado = (num1 / num2) - (num3 / num4)
    print(resultado)
elseif (op1 == '/' and op2 == '/' and op3 == '*' ) then
    print('Works')
    resultado = ((num1 / num2) / num3) * num4
    print(resultado)
elseif (op1 == '/' and op2 == '*' and op3 == '*' ) then
    print('Works')
    resultado = ((num1 / num2) * num3) * num4
    print(resultado)
elseif (op1 == '/' and op2 == '*' and op3 == '/' ) then
    print('Works')
    resultado = ((num1 / num2) * num3) / num4
    print(resultado)
elseif (op1 == '+' and op2 == '-' and op3 == '*' ) then
    print('Works')
    resultado = num1 + num2 - (num3 * num4)
    print(resultado)
elseif (op1 == '+' and op2 == '-' and op3 == '/' ) then
    print('Works')
    resultado = num1 + num2 - (num3 / num4)
    print(resultado)
elseif (op1 == '+' and op2 == '*' and op3 == ' -' ) then
    print('Works')
    resultado = num1 + (num2 * num3) - num4
    print(resultado)
elseif (op1 == '+' and op2 == '/' and op3 == '-' ) then
    print('Works')
    resultado = num1 + (num2 / num3) - num4
    print(resultado)
elseif (op1 == '-' and op2 == '+' and op3 == '*' ) then
    print('Works')
    resultado = num1 - num2 + (num3 * num4)
    print(resultado)
elseif (op1 == '-' and op2 == '*' and op3 == '/' ) then
    print('Works')
    resultado = num1 - ((num2 * num3) / num4)
    print(resultado)
elseif (op1 == '+' and op2 == '*' and op3 == '/' ) then
    print('Works')
    resultado = num1 + ((num2 * num3) / num4)
    print(resultado)
elseif (op1 == '+' and op2 == '/' and op3 == '*' ) then
    print('Works')
    resultado = num1 + ((num2 / num3) * num4)
    print(resultado)
elseif (op1 == '-' and op2 == '/' and op3 == '*' ) then
    print('Works')
    resultado = num1 - ((num2 / num3) * num4)
    print(resultado)
elseif (op1 == '+' and op2 == '-' and op3 == '*' ) then
    print('Works')
    resultado = num1 + num2 - (num3 * num4)
    print(resultado)
elseif (op1 == '+' and op2 == '-' and op3 == '-' ) then
    print('Works')
    resultado = num1 + num2 - (num3 / num4)
    print(resultado)
elseif (op1 == '*' and op2 == '-' and op3 == '+' ) then
    print('Works')
    resultado = (num1 * num2) - num3 + num4
    print(resultado)
elseif (op1 == '*' and op2 == '+' and op3 == '-' ) then
    print('Works')
    resultado = num1 * num2 + num3 - num4
    print(resultado)
elseif (op1 == '/' and op2 == '+' and op3 == '-' ) then
    print('Works')
    resultado = (num1 / num2) + num3 - num4
    print(resultado)
elseif (op1 == '/' and op2 == '-' and op3 == '+' ) then
    print('Works')
    resultado = num1 / num2 - num3 + num4
    print(resultado)
elseif (op1 == '*' and op2 == '-' and op3 == '/' ) then
    print('Works')
    resultado = (num1 * num2) - (num3 / num4)
    print(resultado)
elseif (op1 == '*' and op2 == '+' and op3 == '/' ) then
    print('Works')
    resultado = (num1 * num2) + (num3 / num4)
    print(resultado)
elseif (op1 == '/' and op2 == '-' and op3 == '*' ) then
    print('Works')
    resultado = (num1 / num2) - (num3 * num4)
    print(resultado)
elseif (op1 == '/' and op2 == '+' and op3 == '*' ) then
    print('Works')
    resultado = (num1 / num2) + (num3 * num4)
    print(resultado)
elseif (op1 == '*' and op2 == '/' and op3 == '-' ) then
    print('Works')
    resultado = ((num1 * num2) / num3) - num4
    print(resultado)
elseif (op1 == '*' and op2 == '/' and op3 == '+' ) then
    print('Works')
    resultado = ((num1 * num2) / num3) + num4
    print(resultado)
elseif (op1 == '/' and op2 == '*' and op3 == '-' ) then
    print('Works')
    resultado = ((num1 / num2) * num3) - num4
    print(resultado)
elseif (op1 == '/' and op2 == '*' and op3 == '+' ) then
    print('Works')  
    resultado = ((num1 / num2) * num3) + num4
    print(resultado)  
end

