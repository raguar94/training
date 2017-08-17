x = raw_input().split()
l = len(x)
for i in range(l):
    if i == 0:
        max = int(x[i])
    if i == 1:
        if max > int(x[i]):
            min = int(x[i])
        else:
            min = max
            max = int(x[i])
    if i > 1:
        if int(x[i]) > max:
            max = int(x[i])
        if int(x[i]) < min:
            min = int(x[i])
print str(max)+' '+str(min)
