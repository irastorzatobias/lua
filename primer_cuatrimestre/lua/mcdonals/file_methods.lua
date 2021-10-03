-- ver si existe el archivo
function fileExists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
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
