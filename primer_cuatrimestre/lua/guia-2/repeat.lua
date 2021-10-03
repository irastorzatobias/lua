print('Trying repeat on lua')
print('Guess my name: ')
name = io.read()
repeat
    print('Try again: ')
    name = io.read()   
until string.lower(name) == 'tobias'

-- string.lower(variable)
-- string.upper(variable)
print('Correct')