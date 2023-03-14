""" El archivo local_solution consiste en un archivo que lee cada vez que se ejecuta
el excel que nos proporciona el link y lo almacena dentro de la variable df para luego
realizar las operaciones solicitados"""

import requests
import pandas as pd

url = "http://www.banguat.gob.gt/sites/default/files/banguat/Publica/IMAE/2013/Cuadros_y_graficas_IMAE_ene2023.xlsx"
filename = url.split('/')[-1]
response = requests.get(url)

with open(filename, 'wb') as f:
    f.write(response.content)
    
df = pd.read_excel('./Cuadros_y_graficas_IMAE_ene2023.xlsx')

ultimo_dato = df.tail(1)

print("Último dato del archivo: ", ultimo_dato)