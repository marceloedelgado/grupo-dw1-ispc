perro2 =  [14, "Fido", "12/12/2012" , "Macho", 23546987]
length = len(perro2)

for i in range(length // 2):
    print()
    perro2[i], perro2[length - i - 1] = perro2[length - i - 1], perro2[i]

print(perro2)
print()
