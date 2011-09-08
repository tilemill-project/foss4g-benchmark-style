import json
from sys import path
from os.path import join

mml = join(path[0], 'foss4g-2011/foss4g-2011.mml')

idx = 1
with open(mml, 'r') as f:
  newf = json.loads(f.read())
  for layer in newf["Layer"]:
      if layer["Datasource"]["type"] == "postgis":
          print '%s: ' % idx + layer["Datasource"]["table"].replace('\n',' ').strip()
          idx += 1
