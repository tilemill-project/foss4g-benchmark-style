/* ==== HIGHWAY PALETTE =========================================== */

@aeroway:       rgb(180,180,180);
@bridge:        #666;
@motorway_fill: #fd923a;
@motorway_line: #BA6E27;
@trunk_fill:    #ffc345;
@trunk_line:    #DD9F11;
@primary_fill:  #fffd8b;
@primary_line:  #c7baa8;
@secondary_fill:#fffd8b;
@secondary_line:#c7baa8;
@standard_fill: #fff;
@standard_line: #C1B59D;
@rail:          #777;
@ped_line:      @standard_line;
@ped_fill:      #FAFAF5;
@track:         #aaa;

/* ==== ROADS ===================================================== */

/* ---- Bridge Casing --------------------------------------------- */
#bridge::case[type='motorway'],
#bridge::case[type='motorway_link'],
#bridge::case[type='trunk'],
#bridge::case[type='trunk_link'],
#bridge::case[type='primary'],
#bridge::case[type='primary_link'],
#bridge::case[type='secondary'],
#bridge::case[type='secondary_link'],
#bridge::case[type='tertiary'],
#bridge::case[type='living_street'],
#bridge::case[type='residential'],
#bridge::case[type='road'],
#bridge::case[type='service'],
#bridge::case[type='unclassified'],
#bridge::case[type='unknown'] {
  [zoom>12] {
    line-color:@bridge;
    line-cap:butt;
    line-join:round;
  }
}

/* ---- Motorway -------------------------------------------------- */
#mainroad_line_gen0 [type='motorway'][zoom>6][zoom<=9],
#mainroad_line_gen1 [type='motorway'][zoom>9][zoom<=12],
#motorway_line      [type='motorway'][zoom>12] {
  line-color:@motorway_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen0 [type='motorway'] {
  [zoom=7] { line-width:0.5 + 1; }
  [zoom=8] { line-width:1 + 1; }
  [zoom=9] { line-width:2 + 1; }
}
#mainroad_line_gen1 [type='motorway'] {
  [zoom=10]{ line-width:3 + 2; }
  [zoom=11]{ line-width:3 + 2; }
  [zoom=12]{ line-width:4 + 2; }
}
#motorway_line      [type='motorway'],
#bridge::case       [type='motorway'] {
  [zoom=13]{ line-width:4 + 2; }
  [zoom=14]{ line-width:5 + 2; }
  [zoom=15]{ line-width:6 + 2; }
  [zoom=16]{ line-width:8 + 2; }
  [zoom=17]{ line-width:9 + 2; }
  [zoom>17]{ line-width:10 + 2; }
}

#mainroad_fill_gen0 [type='motorway'][zoom>4][zoom<=9],
#mainroad_fill_gen1 [type='motorway'][zoom>9][zoom<=12],
#motorway_fill      [type='motorway'][zoom>12],
#bridge::fill       [type='motorway'][zoom>12] {
  line-color:@motorway_fill;
  line-cap:round;
  line-join:round;
}
#motorway_fill      [type='motorway'][tunnel=1][zoom>12] {
  line-opacity:0.4;
}
#mainroad_fill_gen0 [type='motorway'] {
  [zoom=5] { line-width:0.5; }
  [zoom=6] { line-width:0.5; }
  [zoom=7] { line-width:0.5; }
  [zoom=8] { line-width:1; }
  [zoom=9] { line-width:2; }
}
#mainroad_fill_gen1 [type='motorway'] {
  [zoom=10]{ line-width:3; }
  [zoom=11]{ line-width:3; }
  [zoom=12]{ line-width:4; }
}
#motorway_fill      [type='motorway'],
#bridge::fill       [type='motorway'] {
  [zoom=13]{ line-width:4; }
  [zoom=14]{ line-width:5; }
  [zoom=15]{ line-width:6; }
  [zoom=16]{ line-width:8; }
  [zoom=17]{ line-width:9; }
  [zoom>17]{ line-width:10; }
}

/* ---- Motorway Link --------------------------------------------- */
#mainroad_line_gen0 [type='motorway_link'][zoom=9],
#mainroad_line_gen1 [type='motorway_link'][zoom>9][zoom<=12],
#motorway_line      [type='motorway_link'][zoom>12] {
  line-color:@motorway_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen0 [type='motorway_link'] {
  [zoom=9] { line-width:0.75 + 1; }
}
#mainroad_line_gen1 [type='motorway_link'] {
  [zoom=10]{ line-width:1 + 2; }
  [zoom=11]{ line-width:1.5 + 2; }
  [zoom=12]{ line-width:2 + 2; }
}
#motorway_line      [type='motorway_link'],
#bridge::case       [type='motorway_link'] {
  [zoom=13]{ line-width:2.5 + 2; }
  [zoom=14]{ line-width:3 + 2; }
  [zoom=15]{ line-width:4 + 2; }
  [zoom=16]{ line-width:7 + 2; }
  [zoom=17]{ line-width:8 + 2; }
  [zoom>17]{ line-width:9 + 2; }
}

#mainroad_fill_gen0 [type='motorway_link'][zoom=9],
#mainroad_fill_gen1 [type='motorway_link'][zoom>9][zoom<=12],
#motorway_fill      [type='motorway_link'][zoom>12],
#bridge::fill       [type='motorway_link'][zoom>12] {
  line-color:@motorway_fill;
  line-cap:round;
  line-join:round;
}
#motorway_fill      [type='motorway_link'][tunnel=1][zoom>12] {
  line-opacity:0.4;
}
#mainroad_fill_gen0 [type='motorway_link'] {
  [zoom=9] { line-width:0.75; }
}
#mainroad_fill_gen1 [type='motorway_link'] {
  [zoom=10]{ line-width:1; }
  [zoom=11]{ line-width:1.5; }
  [zoom=12]{ line-width:2; }
}
#motorway_fill      [type='motorway_link'],
#bridge::fill       [type='motorway_link'] {
  [zoom=13]{ line-width:2.5; }
  [zoom=14]{ line-width:3; }
  [zoom=15]{ line-width:4; }
  [zoom=16]{ line-width:7; }
  [zoom=17]{ line-width:8; }
  [zoom>17]{ line-width:9; }
}

/* ---- Trunk ----------------------------------------------------- */
#mainroad_line_gen0 [type='trunk'][zoom>6][zoom<=9],
#mainroad_line_gen1 [type='trunk'][zoom>9][zoom<=12],
#motorway_line      [type='trunk'][zoom>12]{
  line-color:@trunk_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen0 [type='trunk'] {
  [zoom=7] { line-width:0.5 + 1; }
  [zoom=8] { line-width:1 + 1; }
  [zoom=9] { line-width:2 + 1; }
}
#mainroad_line_gen1 [type='trunk'] {
  [zoom=10]{ line-width:3 + 2; }
  [zoom=11]{ line-width:3 + 2; }
  [zoom=12]{ line-width:4 + 2; }
}
#motorway_line      [type='trunk'],
#bridge::case       [type='trunk'] {
  [zoom=13]{ line-width:4 + 2; }
  [zoom=14]{ line-width:5 + 2; }
  [zoom=15]{ line-width:6 + 2; }
  [zoom=16]{ line-width:8 + 2; }
  [zoom=17]{ line-width:9 + 2; }
  [zoom>17]{ line-width:10 + 2; }
}

#mainroad_fill_gen0 [type='trunk'][zoom>4][zoom<=9],
#mainroad_fill_gen1 [type='trunk'][zoom>9][zoom<=12],
#motorway_fill      [type='trunk'][zoom>12],
#bridge::fill       [type='trunk'][zoom>12] {
  line-color:@trunk_fill;
  line-cap:round;
  line-join:round;
}
#motorway_fill      [type='trunk'][tunnel=1][zoom>12] {
  line-opacity:0.4;
}
#mainroad_fill_gen0 [type='trunk'] {
  [zoom=5] { line-width:0.5; }
  [zoom=6] { line-width:0.5; }
  [zoom=7] { line-width:0.5; }
  [zoom=8] { line-width:1; }
  [zoom=9] { line-width:2; }
}
#mainroad_fill_gen1 [type='trunk'] {
  [zoom=10]{ line-width:3; }
  [zoom=11]{ line-width:3; }
  [zoom=12]{ line-width:4; }
}
#motorway_fill      [type='trunk'],
#bridge::fill       [type='trunk'] {
  [zoom=13]{ line-width:4; }  
  [zoom=14]{ line-width:5; }
  [zoom=15]{ line-width:6; }
  [zoom=16]{ line-width:8; }
  [zoom=17]{ line-width:9; }
  [zoom>17]{ line-width:10; }
}

/* ---- Trunk Link ------------------------------------------------ */
#mainroad_line_gen0 [type='trunk_link'][zoom=9],
#mainroad_line_gen1 [type='trunk_link'][zoom>9][zoom<=12],
#motorway_line      [type='trunk_link'][zoom>12] {
  line-color:@trunk_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen0 [type='trunk_link'] {
  [zoom=9] { line-width:0.75 + 1; }
}
#mainroad_line_gen1 [type='trunk_link'] {
  [zoom=10]{ line-width:1 + 2; }
  [zoom=11]{ line-width:1.5 + 2; }
  [zoom=12]{ line-width:2 + 2; }
}
#motorway_line      [type='trunk_link'],
#bridge::case       [type='trunk_link'] {
  [zoom=13]{ line-width:2.5 + 2; }
  [zoom=14]{ line-width:3 + 2; }
  [zoom=15]{ line-width:4 + 2; }
  [zoom=16]{ line-width:7 + 2; }
  [zoom=17]{ line-width:8 + 2; }
  [zoom>17]{ line-width:9 + 2; }
}

#mainroad_fill_gen0 [type='trunk_link'][zoom=9],
#mainroad_fill_gen1 [type='trunk_link'][zoom>9][zoom<=12],
#motorway_fill      [type='trunk_link'][zoom>12],
#bridge::fill       [type='trunk_link'][zoom>12] {
  line-color:@trunk_fill;
  line-cap:round;
  line-join:round;
}
#motorway_fill      [type='trunk_link'][tunnel=1][zoom>12] {
  line-opacity:0.4;
}
#mainroad_fill_gen0 [type='trunk_link'] {
  [zoom=9] { line-width:0.75; }
}
#mainroad_fill_gen1 [type='trunk_link'] {
  [zoom=10]{ line-width:1; }
  [zoom=11]{ line-width:1.5; }
  [zoom=12]{ line-width:2; }
}
#motorway_fill      [type='trunk_link'],
#bridge::fill       [type='trunk_link'] {
  [zoom=13]{ line-width:2.5; }  
  [zoom=14]{ line-width:3; }
  [zoom=15]{ line-width:4; }
  [zoom=16]{ line-width:7; }
  [zoom=17]{ line-width:8; }
  [zoom>17]{ line-width:9; }
}

/* ---- Primary --------------------------------------------------- */
#mainroad_line_gen0 [type='primary'][zoom>7][zoom<=9],
#mainroad_line_gen1 [type='primary'][zoom>9][zoom<=12],
#mainroad_line      [type='primary'][zoom>12],
#mainroad_line_gen0 [type='primary_link'][zoom>8][zoom<=9],
#mainroad_line_gen1 [type='primary_link'][zoom>9][zoom<=12],
#mainroad_line      [type='primary_link'][zoom>12]{
  line-color:@primary_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen0 [type='primary'],
#mainroad_line_gen0 [type='primary_link'] {
  [zoom=8] { line-width:0.5; }
  [zoom=9] { line-width:0.75 + 1; }
}
#mainroad_line_gen1 [type='primary'],
#mainroad_line_gen1 [type='primary_link'] {
  [zoom=10]{ line-width:1 + 1; }
  [zoom=11]{ line-width:1.5 + 2; }
  [zoom=12]{ line-width:2 + 2; }
}
#mainroad_line      [type='primary'],
#bridge::case       [type='primary'],
#mainroad_line      [type='primary_link'],
#bridge::case       [type='primary_link'] {
  [zoom=13]{ line-width:2.5 + 2; }
  [zoom=14]{ line-width:3 + 2; }
  [zoom=15]{ line-width:4 + 2; }
  [zoom=16]{ line-width:7 + 2; }
  [zoom=17]{ line-width:8 + 2; }
  [zoom>17]{ line-width:9 + 2; }
}

#mainroad_fill_gen0 [type='primary'][zoom>8][zoom<=9],
#mainroad_fill_gen1 [type='primary'][zoom>9][zoom<=12],
#mainroad_fill      [type='primary'][zoom>12],
#bridge::fill       [type='primary'][zoom>12],
#mainroad_fill_gen0 [type='primary_link'][zoom>7][zoom<=9],
#mainroad_fill_gen1 [type='primary_link'][zoom>9][zoom<=12],
#mainroad_fill      [type='primary_link'][zoom>12],
#bridge::fill       [type='primary_link'][zoom>12]{
  line-color:@primary_fill;
  line-cap:round;
  line-join:round;
}
#mainroad_fill      [type='primary'][tunnel=1][zoom>12],
#mainroad_fill      [type='primary_link'][tunnel=1][zoom>12] {
  line-opacity:0.4;
}
#mainroad_fill_gen0 [type='primary'],
#mainroad_fill_gen0 [type='primary_link'] {
  [zoom=9] { line-width:0.75 ; }
}
#mainroad_fill_gen1 [type='primary'],
#mainroad_fill_gen1 [type='primary_link'] {
  [zoom=10]{ line-width:1; }
  [zoom=11]{ line-width:1.5; }
  [zoom=12]{ line-width:2; }
}
#mainroad_fill      [type='primary'],
#bridge::fill       [type='primary'],
#mainroad_fill      [type='primary_link'],
#bridge::fill       [type='primary_link'] {
  [zoom=13]{ line-width:2.5; }
  [zoom=14]{ line-width:3; }
  [zoom=15]{ line-width:4; }
  [zoom=16]{ line-width:7; }
  [zoom=17]{ line-width:8; }
  [zoom>17]{ line-width:9; }
}

/* ---- Secondary ------------------------------------------------- */
#mainroad_line_gen1 [type='secondary'][zoom>8][zoom<=12],
#mainroad_line      [type='secondary'][zoom>12],
#mainroad_line_gen1 [type='secondary_link'][zoom>9][zoom<=12],
#mainroad_line      [type='secondary_link'][zoom>12] {
  line-color:@secondary_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen1 [type='secondary'],
#mainroad_line_gen1 [type='secondary_link'] {
  [zoom=9] { line-width:0.5; }
  [zoom=10]{ line-width:0.75 + 1; }
  [zoom=11]{ line-width:1 + 1; }
  [zoom=12]{ line-width:1.5 + 1; }
}
#mainroad_line      [type='secondary'],
#bridge::case       [type='secondary'],
#mainroad_line      [type='secondary_link'],
#bridge::case       [type='secondary_link'] {
  [zoom=13]{ line-width:2 + 2; }
  [zoom=14]{ line-width:2.5 + 2; }
  [zoom=15]{ line-width:3.5 + 2; }
  [zoom=16]{ line-width:6 + 2; }
  [zoom=17]{ line-width:7 + 2; }
  [zoom>17]{ line-width:8 + 2; }
}

#mainroad_fill_gen1 [type='secondary'][zoom>9][zoom<=12],
#mainroad_fill      [type='secondary'][zoom>12],
#bridge::fill       [type='secondary'][zoom>12],
#mainroad_fill_gen1 [type='secondary_link'][zoom>8][zoom<=12],
#mainroad_fill      [type='secondary_link'][zoom>12],
#bridge::fill       [type='secondary_link'][zoom>12] {
  line-color:@secondary_fill;
  line-cap:round;
  line-join:round;
}
#mainroad_fill      [type='secondary'][tunnel=1][zoom>12],
#mainroad_fill      [type='secondary_link'][tunnel=1][zoom>12] {
  line-opacity:0.4;
}
#mainroad_fill_gen1 [type='secondary'],
#mainroad_fill_gen1 [type='secondary_link'] {
  [zoom=10]{ line-width:0.75; }
  [zoom=11]{ line-width:1; }
  [zoom=12]{ line-width:1.5; }
}
#mainroad_fill      [type='secondary'],
#bridge::fill       [type='secondary'],
#mainroad_fill      [type='secondary_link'],
#bridge::fill       [type='secondary_link'] {
  [zoom=13]{ line-width:2; }
  [zoom=14]{ line-width:2.5; }
  [zoom=15]{ line-width:3.5; }
  [zoom=16]{ line-width:6; }
  [zoom=17]{ line-width:7; }
  [zoom>17]{ line-width:8; }
}

/* ---- Tertiary -------------------------------------------------- */
#mainroad_line_gen1 [type='tertiary'][zoom=12],
#mainroad_line      [type='tertiary'][zoom>12] {
  line-color:@secondary_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen1 [type='tertiary'] {
  [zoom=12]{ line-width:1 + 1; }
}
#mainroad_line      [type='tertiary'],
#bridge::case       [type='tertiary'] {
  [zoom=13]{ line-width:1.5 + 1; }
  [zoom=14]{ line-width:2 + 1; }
  [zoom=15]{ line-width:2.5 + 2; }
  [zoom=16]{ line-width:5 + 2; }
  [zoom=17]{ line-width:6 + 2; }
  [zoom>17]{ line-width:7 + 2; }
}

#mainroad_fill_gen1 [type='tertiary'][zoom>9][zoom<=12],
#mainroad_fill      [type='tertiary'][zoom>12],
#bridge::fill       [type='tertiary'][zoom>12] {
  line-color:@secondary_fill;
  line-cap:round;
  line-join:round;
}
#mainroad_fill      [type='tertiary'][tunnel=1][zoom>12] {
  line-opacity:0.4;
}
#mainroad_fill_gen1 [type='tertiary'] {
  [zoom=10]{ line-width:0.5; line-color:@standard_line; }
  [zoom=11]{ line-width:0.75; line-color:@standard_line; }
  [zoom=12]{ line-width:1; }
}
#mainroad_fill      [type='tertiary'],
#bridge::fill       [type='tertiary'] {
  [zoom=13]{ line-width:1.5; }
  [zoom=14]{ line-width:2; }
  [zoom=15]{ line-width:2.5; }
  [zoom=16]{ line-width:5; }
  [zoom=17]{ line-width:6; }
  [zoom>17]{ line-width:7; }
}

/* ---- Default --------------------------------------------------- */
#minorroad_line[type='living_street'],
#minorroad_line[type='residential'],
#minorroad_line[type='road'],
#minorroad_line[type='service'],
#minorroad_line[type='unclassified'],
#minorroad_line[type='unknown'] {
  [zoom>10]{
    line-color:@standard_line;
    line-cap:round;
    line-join:round;
  }
  [zoom=11]{ line-width:0.5; }
  [zoom=12]{ line-width:0.5; }
  [zoom=13]{ line-width:0.5; }
  [zoom=14]{ line-width:2.5 + 1; }
  [zoom=15]{ line-width:4 + 1; }
  [zoom>15]{ line-width:6 + 1; }
}
#bridge::case[type='living_street'],
#bridge::case[type='residential'],
#bridge::case[type='road'],
#bridge::case[type='service'],
#bridge::case[type='unclassified'],
#bridge::case[type='unknown'] {
  [zoom=13]{ line-width:0.5; }
  [zoom=14]{ line-width:2.5 + 2; }
  [zoom=15]{ line-width:4 + 2; }
  [zoom>15]{ line-width:6 + 2; }
}

#minorroad_fill[type='living_street'],
#minorroad_fill[type='residential'],
#minorroad_fill[type='road'],
#minorroad_fill[type='service'],
#minorroad_fill[type='unclassified'],
#minorroad_fill[type='unknown'],
#bridge::fill[type='living_street'],
#bridge::fill[type='residential'],
#bridge::fill[type='road'],
#bridge::fill[type='service'],
#bridge::fill[type='unclassified'],
#bridge::fill[type='unknown']{
  [zoom>13]{
    line-color:@standard_fill;
    line-cap:round;
    line-join:round;
  }
  [zoom=14]{ line-width:2.5; }
  [zoom=15]{ line-width:4; }
  [zoom>15]{ line-width:6; }
}
#minorroad_fill[type='living_street'],
#minorroad_fill[type='residential'],
#minorroad_fill[type='road'],
#minorroad_fill[type='service'],
#minorroad_fill[type='unclassified'],
#minorroad_fill[type='unknown'] {
  [zoom>13][tunnel=1] { line-opacity:0.4; }
}

/* ---- Track ----------------------------------------------------- */
#minorroad_line[type='track'] {
  [zoom>11] {
    line-color:@track;
    line-width:0.75;
    line-dasharray:2,2;
  }
  [zoom>14] {
    line-width:1;
    line-dasharray:2,3;
  }
}

/* ---- Footway --------------------------------------------------- */
#minorroad_line[type='footway'] {
  [zoom>14] {
    line-width:1;
    line-dasharray:2,3;
    line-color:#fff;
  }
}

/* ---- Pedestrian ------------------------------------------------ */
#minorroad_line[type='pedestrian'][zoom>11] {
  line-color:@ped_line;
  [zoom=12]{ line-width:0.75; }
  [zoom=13]{ line-width:1 + 1; }
  [zoom=14]{ line-width:1.5 + 1; }
  [zoom=15]{ line-width:2 + 1; }
  [zoom=16]{ line-width:2.5 + 1; }
  [zoom=17]{ line-width:3 + 2; }
  [zoom>17]{ line-width:3.5 + 2; }
}

#minorroad_fill[type='pedestrian'][zoom>12] {
  line-color:@ped_fill;
  [zoom=13]{ line-width:1; }
  [zoom=14]{ line-width:1.5; }
  [zoom=15]{ line-width:2; }
  [zoom=16]{ line-width:2.5; }
  [zoom=17]{ line-width:3; }
  [zoom>17]{ line-width:3.5; }
}

/* ==== RAILWAY =================================================== */

#rail[zoom>7] {
  line-color:@rail;
  line-dasharray:2,2;
}

/* ==== AEROWAY =================================================== */

#aeroway[zoom>9] {
  line-color:@aeroway;
  line-cap:butt;
  line-join:miter;
  [type='runway'] {
    [zoom=10]{ line-width:1; }
    [zoom=11]{ line-width:2; }
    [zoom=12]{ line-width:3; }
    [zoom=13]{ line-width:5; }
    [zoom=14]{ line-width:7; }
    [zoom=15]{ line-width:11; }
    [zoom=16]{ line-width:15; }
    [zoom=17]{ line-width:19; }
    [zoom>17]{ line-width:23; }
  }
  [type='taxiway'] {
    [zoom=10]{ line-width:0.2; }
    [zoom=11]{ line-width:0.2; }
    [zoom=12]{ line-width:0.2; }
    [zoom=13]{ line-width:1; }
    [zoom=14]{ line-width:1.5; }
    [zoom=15]{ line-width:2; }
    [zoom=16]{ line-width:3; }
    [zoom=17]{ line-width:4; }
    [zoom>17]{ line-width:5; }
  }
}
