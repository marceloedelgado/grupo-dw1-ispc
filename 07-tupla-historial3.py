historial3 = (9530, 4120, 4580, 1500, 890,7516,426)

def calculador3(z):
  cont = 0  
  for i in range (0, len(z)):
    cont += z[i]
  prom = cont/len(z)
  print("El promedio de gastos es: ", prom)
  if prom > 4500:
    print("Se ha excedido del gasto promedio para su mascota")    
calculador3(historial3)