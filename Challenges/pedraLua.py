import sys
r = int(input())

smallest = sys.maxsize 
winner = "sem ganhador"

for i in range(r):
    line = input()
    t = tuple(int(x) for x in line.split(" "))

    if t[0] < 10 or t[1] < 10:
        continue

    s = abs(t[0] - t[1])

    if s < smallest:
        smallest = s
        winner = i

print(winner)