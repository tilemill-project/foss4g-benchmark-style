/* **************************************************************** */
/* FOSS4G 2011 WMS BENCHMARK STYLE FOR MAPNIK                       */
/* **************************************************************** */

/* ==== LANDUSE PALETTE =========================================== */
@land:       #f2efe9;
@water:      #99b3cc;

@forest: #c4d0bc;
@park: #b5d29c;

/* ==== LANDUSE & LANDCOVER ======================================= */

Map { background-color:@water; }

#land { polygon-fill:@land; }

#water_gen0[zoom>2][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
  polygon-fill:@water;
}

#forest_park[zoom>3][zoom<6] {
  [type='forest']     { polygon-fill:@forest; }
  [type='park']       { polygon-fill:@park; }
}

#landuse_gen0[zoom>5][zoom<=9],
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12] {
  [type='cemetery']   { polygon-fill:#d1d1d1; }
  [type='commercial'] { polygon-fill:#d1d0cd; }
  [type='forest']     { polygon-fill:@forest; }
  [type='golf_course']{ polygon-fill:#b5d29c; }
  [type='hospital']   { polygon-fill:#e5c6c3; }
  [type='commercial'] { polygon-fill:#d1d0cd; }
  [type='park']       { polygon-fill:@park; }
  [type='pitch']      { polygon-fill:#ded2ac; }
  [type='residential']{ polygon-fill:#f2efe9; }
  [type='school']     { polygon-fill:#ded2ac; }
  [type='university'] { polygon-fill:#ded2ac; }
  [type='wood']       { polygon-fill:#c4d0bc; }
  ::p[type='parking'] { polygon-fill:#d1d0cd; }
}

/* ---- Waterways ------------------------------------------------- */

#waterway[type='river'][zoom>5] {
  line-color:@water;
  line-cap:round;
  line-join:round;
  [zoom=6] { line-width:0.15; }
  [zoom=7] { line-width:0.25; }
  [zoom=8] { line-width:0.5; }
  [zoom=9] { line-width:1; }
  [zoom=10]{ line-width:1; }
  [zoom=11]{ line-width:2; }
  [zoom=12]{ line-width:2; }
  [zoom=13]{ line-width:3; }
  [zoom=14]{ line-width:3; }
  [zoom=15]{ line-width:4; }
  [zoom=16]{ line-width:5; }
  [zoom=17]{ line-width:6; }
  [zoom>17]{ line-width:7; }
}

#waterway[type='stream'][zoom>9] {
  line-color:@water;
  line-cap:round;
  line-join:round;
  [zoom=10]{ line-width:0.5; }
  [zoom=11]{ line-width:0.5; }
  [zoom=12]{ line-width:1; }
  [zoom=13]{ line-width:1; }
  [zoom>13]{ line-width:2; }
}

#waterway[type='canal'][zoom>9] {
  line-color:@water;
  line-cap:round;
  line-join:round;
  [zoom=10]{ line-width:0.5; }
  [zoom=11]{ line-width:0.5; }
  [zoom=12]{ line-width:1; }
  [zoom=13]{ line-width:1; }
  [zoom=14]{ line-width:2; }
  [zoom=15]{ line-width:4; }
  [zoom=16]{ line-width:8; }
  [zoom=17]{ line-width:16; }
  [zoom>17]{ line-width:30; }
}

/* **************************************************************** */