/* **************************************************************** */
/* FOSS4G 2011 WMS BENCHMARK STYLE FOR MAPNIK                       */
/* **************************************************************** */

/* ==== LANDUSE PALETTE =========================================== */
@land:       #f2efe9;
@water:      #99b3cc;

@cemetery: #d1d1d1;
@forest: #c4d0bc;
@hospital: rgb(229,198,195);
@industrial: rgb(209,208,205);
@pedestrian: rgb(250,250,245);
@residential: rgb(242,239,233);
@school: rgb(222,210,172);
@sports: #DED1AB;
@park: #b5d29c;

@transport: rgb(200,200,200);

/* ==== LANDUSE & LANDCOVER ======================================= */

Map { background-color:@water; }

#land[zoom<3],
#shoreline_300[zoom>=3][zoom<7],
#processed_p[zoom>=7] {
  polygon-fill:@land;
  polygon-gamma:0.75;
}

#borders::glow[zoom>5] {
  line-width:5;
  line-color:#CDCBC6;
  line-opacity:0.5;
}
#borders::line[zoom>=0] {
  line-width:0.5;
  line-color:#CDCBC6;
  [zoom>3] { line-color:#8d8b8d; }
  [zoom>6] { line-width:1; }
}

#waterareas[zoom>3] {
  polygon-fill:@water;
}

#landuse[zoom>3] {
  [type='pedestrian']   { polygon-fill:@pedestrian; }
  [type='college']      { polygon-fill:@school; }
  [type='hospital']     { polygon-fill:@hospital; }
  [type='pitch']        { polygon-fill:@sports; }
  [type='sports_center']{ polygon-fill:@sports; }
  [type='stadium']      { polygon-fill:@sports; }
  [type='industrial']   { polygon-fill:@industrial; }
  [type='commercial']   { polygon-fill:@industrial; }
  [type='wood']         { polygon-fill:@forest; }
  [type='university']   { polygon-fill:@school; }
  [type='cemetery']     { polygon-fill:@cemetery; }
  [type='residential']  { polygon-fill:@residential; }
  [type='school']       { polygon-fill:@school; }
  [type='parking']      { polygon-fill:@industrial; }
  [type='golf_course']  { polygon-fill:@park; }
  [type='park']         { polygon-fill:@park; }
  [type='forest']       { polygon-fill:@forest; }
}

#transport_areas[zoom>3] {
  polygon-fill:@transport;
}

/* ---- Waterways ------------------------------------------------- */

#waterway[type='river'][zoom>5][zoom<=12]{
  line-color:@water;
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

#waterway[type='river'][zoom>12] {
  line-color:@water;
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
  [zoom=10]{ line-width:0.5; }
  [zoom=11]{ line-width:0.5; }
  [zoom=12]{ line-width:1; }
  [zoom=13]{ line-width:1; }
  [zoom>13]{ line-width:2; }
}

#waterway[type='canal'][zoom>9] {
  line-color:@water;
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

#waterway[type='stream'][zoom>9]{
  line-color:@water;
  [zoom=10]{ line-width:0.5; }
  [zoom=11]{ line-width:0.5; }
  [zoom=12]{ line-width:1; }
  [zoom=13]{ line-width:1; }
  [zoom>13]{ line-width:2; }
}

#waterway[type='canal'][zoom>9] {
  line-color:@water;
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
