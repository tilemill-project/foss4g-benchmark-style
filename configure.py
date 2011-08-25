#!/usr/bin/env python

## FOSS4G BENCHMARK 2011 ##
## MAPNIK CARTO CONFIGURATION OPTIONS ##

# PostGIS connection setup
host     = "localhost"
port     = "5432"
dbname   = "gis"
user     = "gis"
password = "gis"

# Land shapefiles required for the style. If you have already downloaded
# these or wish to use different versions, specify their paths here.
# The latest versions can be downloaded from osm.org:
# - http://tile.openstreetmap.org/processed_p.tar.bz2
# - http://tile.openstreetmap.org/shoreline_300.tar.bz2
processed_p = "http://tilemill-data.s3.amazonaws.com/osm/processed_p.zip"
shoreline_300 = "http://tilemill-data.s3.amazonaws.com/osm/shoreline_300.zip"

# Increase performance if you are only rendering a particular area by
# specifying a bounding box to restrict queries. Format is "XMIN,YMIN,XMAX,YMAX" in the
# same units as the database (probably spherical mercator meters). The
# whole world is "-20037508.34,-20037508.34,20037508.34,20037508.34".
# Leave blank to let Mapnik estimate.
extent = "-12197658.2353032,4354107.45296023,-11359191.3507561,5097334.13614237"

#################################

import json
from sys import path
from os.path import join

mml = join(path[0], 'foss4g-2011/foss4g-2011.mml')

with open(mml, 'r') as f:
  newf = json.loads(f.read())
f.closed

with open(mml, 'w') as f:
  for layer in newf["Layer"]:
    if layer["Datasource"]["type"] == "postgis":
      layer["Datasource"]["host"] = host
      layer["Datasource"]["port"] = port
      layer["Datasource"]["dbname"] = dbname
      layer["Datasource"]["user"] = user
      layer["Datasource"]["password"] = password
      layer["Datasource"]["extent"] = extent
    if layer["id"] == "shoreline_300":
      layer["Datasource"]["file"] = shoreline_300
    elif (layer["id"] == "processed_p") or (layer["id"] == "processed_p_outline"):
      layer["Datasource"]["file"] = processed_p
  f.write(json.dumps(newf, sort_keys=True, indent=2))
f.closed
