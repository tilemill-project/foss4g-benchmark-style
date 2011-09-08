1: (select * from osm_places where type in ('country','continent') and name is not NULL order by population asc nulls first) as t
2: (select * from osm_places where type in ('country','continent','city') and name is not NULL order by population asc nulls first) as t
3: (select geometry ,osm_id, type, name from osm_landusages       where type in ('forest','residential')      order by area desc) as t
4: osm_transport_areas
5: (select geometry,osm_id ,name,type from osm_waterareas) as t
6: (select osm_id,geometry,name,ref,type,tunnel,bridge from osm_roads_gen0 order by z_order asc, st_length(geometry) asc) as t
7: (select geometry ,osm_id, type, name from osm_landusages       where type in ('forest','industrial','commercial','residential')      order by area desc) as t
8: (select geometry, osm_id, type, name from osm_waterways where type='river') as t
9: (select osm_id,geometry,name,ref,type,tunnel,bridge from osm_roads_gen1 order by z_order asc, st_length(geometry) asc) as t
10: (select geometry, osm_id, tunnel from osm_railways_gen1 where type='rail') as t
11: (select * from osm_places where type in ('city','town') and name is not NULL order by population asc nulls first) as t
12: (select geometry ,osm_id, type, name from osm_landusages       where type in ('forest','pedestrian','cemetery','industrial','commercial',      'brownfield','residential','school','college','university',      'military','park','golf_course','hospital','parking','stadium','sports_center',      'pitch') order by area desc) as t
13: (select osm_id,geometry,name,ref,type,tunnel,bridge from osm_roads order by z_order asc, st_length(geometry) asc) as t
14: (select geometry, osm_id, type, name from osm_waterways) as t
15: (select geometry, osm_id, type from osm_aeroways) as t
16: (select * from osm_places where type in ('city','town','village') and name is not NULL order by population asc nulls first) as t
17: (select geometry, osm_id, tunnel from osm_railways where type='rail') as t
18: (select * from osm_places where name is not NULL order by population asc nulls first) as t
