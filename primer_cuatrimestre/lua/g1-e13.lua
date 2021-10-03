print('-- four values --');
print('a value: ');
a = io.read()
realA = a

print('b value: ');
b = io.read()
realB = b

print('c value: ');
c = io.read()
realC = c

print('d value: ');
d = io.read()
realD = d


print('values before swap: '..a..' , '..b..' , '..c..' , '..d)

a,b,c,d = d,c,a,b

print('values after swap: '..a..' , '..b..' , '..c..' , '..d)

print('original values: '..realA..' , '..realB..' , '..realC..' , '..realD)