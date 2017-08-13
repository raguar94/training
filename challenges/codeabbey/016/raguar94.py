x = int(raw_input())
for i in range(x):
    y = raw_input().split()
    l = len(y)-1
    suma = 0
    for j in range(l):
        suma += float(y[j])
    avg = suma/l
    print str(int(round(avg)))+' '
