historial2 = (23500,5960,2300,10200,8900)
montoTotal = 0

for monto in historial2:
    montoTotal += monto

def atencionFrida(facturas):
    contador = 0
    for gasto in facturas:
        if gasto > 5000:
            contador += 1
    return contador

print("El monto total gastado a lo largo del tiempo por la atención de “Frida” es:",montoTotal)
print("Cantidad de gastos superiores a 5000:",atencionFrida(historial2))
