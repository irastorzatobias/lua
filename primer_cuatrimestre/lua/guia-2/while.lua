print('Guess my name: ')
name = io.read()

while(name ~= 'Tobias')
do
    print('Guess again')
    print('Enter a new name')
    name = io.read()
end

print('Perfect')