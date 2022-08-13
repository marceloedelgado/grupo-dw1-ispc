historial2 = (23500,5960,2300,10200,8900)

def atencionFrida(facturas):
    contador = 0
    for gasto in facturas:
        if gasto > 5000:
            contador += 1
    return contador

gastos_superiores = print("Cantidad de gastos superiores a 5000:",atencionFrida(historial2))
