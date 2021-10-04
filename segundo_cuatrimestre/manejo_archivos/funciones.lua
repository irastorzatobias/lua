--REPERTORIO DE FUNCIONES OLIVERO EZEQUIEL.
function valFormatoFecha()
    fecha=""
    while #fecha~=10 or string.sub(fecha,3,3)~="/" or string.sub(fecha,6,6)~="/" or dia==nil or mes==nil or anio==nil or string.find(fecha,".",1,true)~=nil do 
        print("Ingrese fecha(dd/mm/aaaa): ")
        fecha=io.read()
        dia=tonumber(string.sub(fecha,0,2))
        mes=tonumber(string.sub(fecha,4,5))
        anio=tonumber(string.sub(fecha,7,10))
    end
    return dia,mes,anio   
end

function valFecha(dia,mes,anio)
    if mes<1 or mes>12 or dia<1 or dia>31 or ((mes==4 or mes==6 or mes==9 or mes==11) and dia>30) or (dia>29 and mes==2) or 
    ((dia==29 and mes==2) and ((anio%100==0 and anio%400~=0) or (anio%100~=0 and anio%4~=0))) then
        result="Fecha invalida capo."
    else
        result="Fecha valida"
    end
    return result
end

function fecha_a_edad(dia,mes,anio)
    result=0
    if dia>=tonumber(os.date("%d")) and mes>=tonumber(os.date("%m")) then
        result=(os.date("%Y")-anio)-1
    else
        result=os.date("%Y")-anio
    end
    return result
end

function valStr(mensaje)
    terminar=true
    while terminar do
        print(mensaje)
        str=io.read()
        if(string.lower(str))>="a" and string.lower(str)<="z" then
            terminar=false
        else
            terminar=true
        end
    end
    return str
end

function valInt(mensaje,min,max)
    numInt=nil
    while (numInt==nil or numInt<min or numInt>max or numInt%1~=0)  do
        print (mensaje)
        numInt=tonumber(io.read())
    end
    return numInt
end

function valFloat(mensaje,min,max)
    numFloat=nil
    while numFloat==nil or numFloat<0 do
    print (mensaje)
        numFloat=tonumber(io.read())
    end
    return numFloat
end

--TRABAJO CON ARCHIVOS 

function lectorArchivo(archivoTxt)--funcion lee archivo
    file = io.open(archivoTxt)lines = file:lines();
    return file
end

function lectorArchivoLineas(archivoTxt)--funcion lee archivo linea por linea, lo printea
    archivo=io.open(archivoTxt)lines=archivo:lines();
    for renglon in lines do
        print(renglon)
    end
end

function creadorArchivoEscr(archivoTxt)--abre un archivo en modo W, si no existe lo crea
    file = io.open(archivoTxt, "w")
    return file
end

function pruebaError(archivoTxt) --simil al try/except de python: pcall en if/else , intenta leer file.txt, si no existe lo crea en blanco con la funcion de escritura (W).
    if pcall(lectorArchivo,archivoTxt) then 
        file:close()
    else
        creadorArchivoEscr(archivoTxt)
        file:close()
    end
end

function removerLinea(txt,lineaNumero,cantLineas) --elimina renglon del txt completamente sin dejar espacio en blanco
    archivo=io.open(txt,"r")
    content={}
    i=1;
    for line in archivo:lines() do
        if i<lineaNumero or i>=lineaNumero +cantLineas then
	        content[#content+1]=line
	    end
	    i=i+1
    end
    archivo:close()
    archivo=io.open(txt,"w+")
    for i=1, #content do
	    archivo:write(string.format("%s\n",content[i]))
    end
    archivo:close()
end

function xRenglon(archivoTxt, num)--funcion buscador de N renglon en el txt, retorna el renglon.
    archivo=io.open(archivoTxt)lines=archivo:lines();
    tCount=1
    for renglon in lines do
        if tCount==num then
            archivo:close()
            return renglon
        end
        tCount=tCount + 1
    end
end

function escritura(archivoTxt,texto) --funcion para escribir sobre un archivo sin sobreescribir.
    local apendFile=io.open(archivoTxt,"a")
    apendFile:write(texto.."\n")
end

function edicionRenglon(renglonOrig,renglonRempl,archivoTxt)--funcion para editar un renglon.
    archivo = io.open(archivoTxt)data = archivo:read("*all");--Para renglonOrig ocupar xRenglon.
    archivo:close()--Para renglongRempl ocupar xRenglon tambien si es necesario y modificarlo.
    data=string.gsub(data,renglonOrig,renglonRempl)
    archivo = io.open(archivoTxt, "w")
    archivo:write(data)
    archivo:close()