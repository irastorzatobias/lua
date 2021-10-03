-- ver si existe el archivo
function fileExists(file)
    local f = io.open(file, "r")
    if f then 
      f:close()
      return true
    else
      print('El archivo no existe, fue creado')
      f = io.open(file,'w')
      f:close()
      return false
  end
end
  

-- get all lines from a file, returns an empty 
-- list/table if the file does not exist
function lines_from(file)
    if not fileExists(file) then return {} end
    lines = {}
    for line in io.lines(file) do 
      lines[#lines + 1] = line
    end
    return lines
  end


