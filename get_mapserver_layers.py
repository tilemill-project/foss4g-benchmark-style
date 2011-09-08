import mapscript
import re

ms = mapscript.mapObj('../mapserver/osm-google.map')


layers = []
layer_names = []
layer_ids = []
styles = []
style_cache = {}
#rules = []

pattern = r'([A-Za-z]+)([0-9]+)'

# first collect all unique layers
unique_layers = {}
layer_order = []
data_names = {}

idx1 = 1
for idx in ms.getLayerOrder():
    msl = ms.getLayer(idx)
    base_name = re.findall(pattern,msl.name)[0][0]
    #if not 'road' in base_name:
    #    continue
    
    if not msl.data in data_names:
        layer_name = '%s_%s' % (base_name,idx1)
        data_names[msl.data] = layer_name
        idx1 += 1
    else:
        layer_name = data_names[msl.data]

    rules = []
    casing_rules = []
    text_rules = []
    
    if layer_name in unique_layers:
        rules = unique_layers[layer_name]['rules']
        casing_rules = unique_layers[layer_name]['casing_rules']
        text_rules = unique_layers[layer_name]['text_rules']
    else:
        layer_order.append(layer_name)
        unique_layers[layer_name] = {}
        unique_layers[layer_name]['rules'] = rules
        unique_layers[layer_name]['casing_rules'] = casing_rules
        unique_layers[layer_name]['text_rules'] = text_rules
        unique_layers[layer_name]['data'] = msl.data
        mapnik_layer = 'foo' #utils.ms2layer(msl,layer_name,postgis)
        unique_layers[layer_name]['lyr'] = mapnik_layer


text_layers = []

p_pattern = r'from (\w+)\W'
t_pattern = r'geometry from \((.*)\)'

def get_sql(data):
    geometry_table = re.findall(p_pattern,data)
    if not geometry_table:
        import pdb;pdb.set_trace()
    else:
        geometry_table = geometry_table[0]
    
    if '(' in data: # then subquery
        table = re.findall(t_pattern,data)
        if not table:
            import pdb;pdb.set_trace()
        else:
            table = '(' + table[0] + ') as t'
    else:
        table = geometry_table
    return table


idx = 1
for lay in layer_order:
    data = unique_layers[lay]['data']
    if 'from' in data:
        print '%s: ' % idx + get_sql(data)
        idx += 1
    #layer = unique_layers[lay]['lyr']
    #print layer