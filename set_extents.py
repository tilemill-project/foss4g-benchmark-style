import json
import sys
from sys import path
from os.path import join


from mapnik2 import *

mml = join(path[0], 'foss4g-2011/foss4g-2011.mml')

f = open(mml, 'r')
newf = json.loads(f.read())

for i in newf['Layer']:
    #import pdb;pdb.set_trace()
    if i['Datasource'].has_key('table'):
        #print lay['Datasource']
        c = {}
        for k,v in i['Datasource'].items():
            c[str(k)] = str(v)
        ds = PostGIS(**c)
        e = ds.envelope()
        bbox = '%s,%s,%s,%s' % (e.minx,e.miny,e.maxx,e.maxy)
        i['Datasource']["extent"] = bbox 
            
f = open(mml, 'w')
f.write(json.dumps(newf, sort_keys=True, indent=2))
f.closed
    