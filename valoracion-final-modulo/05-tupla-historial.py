# Alumno: Ledesma Damian Emiliano
#
#

#funcion para sumar el total de los montos.
def sumarmontos(montos):
    monto_total=0
    for monto in montos:
        monto_total+=monto
    return monto_total

#defino la tupla y defino la suma total.
historial=(2350,5960,23000,1000,8900)
montototal=sumarmontos(historial)

#condicion.
if montototal<3000:
    print(montototal)
else:
    print("Gastos por encima de lo presupuestado")