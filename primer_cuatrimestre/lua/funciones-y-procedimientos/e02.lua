-- Area de un circulo
function area_circunferencia_circulo(radio)
    area = math.pi * (radio ^ 2)
    diametro = 2 * radio
    return area, diametro
end