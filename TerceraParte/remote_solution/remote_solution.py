""" El archivo remote_solution.py solo posee una lectura e impresión.
La lógica de descarga automatizada se encuentra dentro del repositorio remoto.
Para que funcione correctamente de manera local solo se necesita realizar un pull"""

# Imports necesarios
import pandas as pd

# Lectura del archivo de manera local ./Cuadros_y_graficas_IMAE_ene2023.xlsx
# Se actualiza automaticamente al realizar un pull request al repositorio remoto
df = pd.read_excel('./Cuadros_y_graficas_IMAE_ene2023.xlsx')

# Obtencion del ultimo dato
ultimo_dato = df.tail(1)

# Impresión del dato en terminal
print("Último dato del archivo: ", ultimo_dato)