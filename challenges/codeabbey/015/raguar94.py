x=int(raw_input())
b=0
while b==0:
    y=raw_input()
    x=eval('x'+y)
    if y[0]=='%':
        b=1
print x
