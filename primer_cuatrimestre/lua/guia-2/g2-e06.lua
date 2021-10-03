print('¿Que carrera estudia?')
carrer = io.read()
print('¿Donde vive?')
from = io.read()
cuota = 4500
if (carrer == "analista de sistemas" and from ~= "rio cuarto") then
    cuota = cuota - cuota * 0.10 
    print('Obtuvo un descuento, debe pagar: '..cuota..' pesos')
else 
    print('No posee descuento, debe pagar: '..cuota)
end

