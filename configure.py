#!/usr/bin/env python

## FOSS4G BENCHMARK 2011 ##
## MAPNIK CARTO CONFIGURATION OPTIONS ##

# PostGIS connection setup
host     = ""
port     = "5432"
dbname   = "osm"
user     = "postgres"
password = "postgres"

# shapefiles required for the style. If you have already downloaded
# these or wish to use different versions, specify their paths here.

# by default will be downloaded first compile (will take ~20 minutes)
processed_p = shoreline_300 = boundaries = tm_world = None

# - http://tile.openstreetmap.org/processed_p.tar.bz2
#processed_p = "/benchmarking/wms/2011/data/vector/osm_base_data/data/processed_p.shp"

# - http://tile.openstreetmap.org/shoreline_300.tar.bz2
#shoreline_300 = "/benchmarking/wms/2011/data/vector/osm_base_data/data/shoreline_300.shp"

# - http://mapserver-utils.googlecode.com/svn/trunk/data/boundaries.shp
#boundaries = "/benchmarking/wms/2011/data/vector/osm_base_data/data/boundaries.shp"

# http://thematicmapping.org/downloads/TM_WORLD_BORDERS-0.3.zip
#tm_world = "/benchmarking/wms/2011/data/vector/osm_base_data/data/TM_WORLD_BORDERS-0.3.shp"

# Increase postgres startup performance if you are only rendering a particular area by
# specifying a bounding box to restrict queries. Format is "XMIN,YMIN,XMAX,YMAX" in the
# same units as the database (probably spherical mercator meters). The
# whole world is "-20037508.34,-20037508.34,20037508.34,20037508.34".
# Leave blank to let Mapnik estimate.
extent = "-12197658.2353032,4354107.45296023,-11359191.3507561,5097334.13614237"

feat_caching = True
#################################

import json
from sys import path
from os.path import join

mml = join(path[0], 'foss4g-2011/foss4g-2011.mml')
#mml_out = join(path[0], 'foss4g-2011/foss4g-2011-localized.mml')

with open(mml, 'r') as f:
  newf = json.loads(f.read())
f.closed

with open(mml, 'w') as f:
  for layer in newf["Layer"]:
    if feat_caching:
        layer["attributes"] = {}
        layer["attributes"]["cache-features"] = "true"
    if layer["Datasource"]["type"] == "postgis":
      layer["Datasource"]["host"] = host
      layer["Datasource"]["port"] = port
      layer["Datasource"]["dbname"] = dbname
      layer["Datasource"]["user"] = user
      layer["Datasource"]["password"] = password
      layer["Datasource"]["extent"] = extent
      layer["Datasource"]["srid"] = 3857
      layer["Datasource"]["max_size"] = 33 
    file_ds = layer["Datasource"].get("file")
    if (file_ds):
        if shoreline_300 and "shoreline_300" in file_ds:
          layer["Datasource"]["file"] = shoreline_300
        elif processed_p and "processed_p" in file_ds:
          layer["Datasource"]["file"] = processed_p
        elif tm_world and "TM_WORLD_BORDERS" in file_ds:
          layer["Datasource"]["file"] = tm_world
        elif boundaries and "boundaries" in file_ds:
          layer["Datasource"]["file"] = boundaries
  f.write(json.dumps(newf, sort_keys=True, indent=2))
f.closed

print 'wrote: ' + mml
