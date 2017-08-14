x = int(raw_input())
data = raw_input().split()
for i in range(x):
  num = int(data[i])
  suma = 0
  b1 = 0
  weight = 0
  while b1 == 0:
    num = num/10
    weight += 1
    if num == 0:
      b1 = 1
  b1 = 0
  num = int(data[i])
  while b1 == 0:
    suma += (num%10)*weight
    num = num/10
    weight -= 1
    if num == 0:
      b1 = 1
  print str(suma) + ' '
