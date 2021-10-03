print('N       A       B       C')
n = 0
a = 1
b = 1
c = 1
print(n,a,b,c)

for i = 0, 14 do
    b = a + b + c 
    n = n + 1
    a = a + 2
    c = c + b
    print(n,a,b,c)
end