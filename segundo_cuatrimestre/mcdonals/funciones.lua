function inputNumber() 
   num = tonumber(io.read())
   while num == nil or num < 0 do
       print('Ingreso un valor invalido, intente nuevamente: ')
       num = tonumber(io.read())
   end
   return num
end

