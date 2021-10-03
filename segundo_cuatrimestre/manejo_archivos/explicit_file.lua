-- Opens a file in read mode
file = io.open("test.lua", "r")

-- prints the first line of the file
print(file:read())

-- closes the opened file
file:close()

-- Opens a file in append mode
file = io.open("test.lua", "a")

-- appends a word test to the last line of the file
file:write("--test")

-- closes the open file
file:close()


-- 1	This in io.read()
-- "*n"

-- Reads from the current file position and returns a number if exists at the file position or returns nil.

-- 2	
-- "*a"

-- Returns all the contents of file from the current file position.

-- 3	
-- "*l"

-- Reads the line from the current file position, and moves file position to next line.

-- 4	
-- number

-- Reads number of bytes specified in the function.