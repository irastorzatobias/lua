print('-- SWAP --')
print('enter first name: ')
name1 = io.read()
print('enter second name: ')
name2 = io.read()
print('first name before swap: '..name1)
print('second name before swap: '..name2)
name1, name2 = name2, name1

print('first name after swap: '..name1)
print('second name after swap: '..name2)


