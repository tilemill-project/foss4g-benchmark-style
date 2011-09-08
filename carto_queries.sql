1: (select geometry, type, round(st_area(geometry)) as area from osm_landusages where type in ( 'brownfield','forest','park','golf_course','parking','school','residential','cemetery', 'university','wood','commercial','industrial','stadium','sports_center', 'pitch','hospital','college','pedestrian') order by area desc) as landusages
2: (select geometry from osm_waterareas ) as water
3: (select geometry, type from osm_waterways ) as waterway
4: (select geometry, type from osm_transport_areas ) as transport
5: (select geometry, type from osm_aeroways ) as aeroway
6: (select geometry, type, tunnel from osm_railways where type='rail') as railway
7: (select geometry, type from osm_roads where type in ('track','footway','pedestrian')) as track
8: (select geometry, type from osm_roads where type in ('living_street','residential','road','service','unclassified','unknown') and tunnel = 0) as road
9: (select geometry, type from osm_roads_gen1 where type in ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary') ) as road
10: (select geometry, type, tunnel from osm_roads where type in ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary', 'secondary_link', 'tertiary', 'tertiary_link') order by z_order asc, st_length(geometry) asc) as road
11: (select geometry, type, tunnel from osm_roads where type in ('living_street','residential','road','service','unclassified','unknown') order by z_order asc, st_length(geometry) asc) as road
12: (select geometry, type, tunnel from osm_roads where type in ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary', 'primary_link', 'secondary', 'secondary_link', 'tertiary', 'tertiary_link') order by z_order asc, st_length(geometry) asc) as road
13: (select geometry, type, tunnel from osm_roads_gen0 where type in ('motorway','trunk')) as road
14: (select geometry, type, tunnel from osm_roads_gen1 where type in ('motorway', 'motorway_link', 'trunk', 'trunk_link', 'primary') ) as roads
15: (select geometry, type, bridge, z_order from osm_roads where bridge = 1 order by z_order) as road
16: (select geometry, type, name from osm_places order by z_order, population desc  ) as places
17: (select geometry, type, name, ref from osm_roads where name is not null or ref is not null or oneway = 1 and type in ('motorway', 'trunk')) as label
18: (select geometry, type, name, oneway from osm_roads where name is not null or oneway = 1 and type in ('primary', 'secondary', 'tertiary')) as label
19: (select geometry, type, name from osm_roads where name is not null and  type in ('living_street','residential','road','service','unclassified','unknown') ) as label
20: (select geometry, name, round(st_area(geometry)/1000) as area from osm_waterareas where type != 'riverbank' and name is not null ) as label
21: (select geometry, type, name, round(st_area(geometry)) as area from osm_landusages where name is not null order by area desc) as label
22: (select geometry, type, name, round(st_length(geometry)) as length from osm_waterways where type in ('canal', 'river', 'stream') and name is not null ) as label
