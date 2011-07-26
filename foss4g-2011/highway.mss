/* ---- PALETTE --------------------------------------------------- */

@motorway_fill: #fd923a;
@motorway_line: desaturate(darken(@motorway_fill,20),15);
@trunk_fill:    #ffc345;
@trunk_line:    desaturate(darken(@trunk_fill,20),15);
@primary_fill:  #fffd8b;
@primary_line:  #c7baa8;
@secondary_fill:#fffd8b;
@secondary_line:#c7baa8;
@standard_fill: #fff;
@standard_line: lighten(#c7baa8,5);
@rail:          #777;

/* ==== ROADS ===================================================== */

/* ---- Motorway -------------------------------------------------- */
#mainroad_line_gen0[type='motorway'][zoom>6][zoom<=9],
#mainroad_line_gen1[type='motorway'][zoom>9][zoom<=11],
#motorway_line[type='motorway'][zoom>11]{
  line-color:@motorway_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen0[type='motorway'] {
  [zoom=7] { line-width:0.6 + 1; }
  [zoom=8] { line-width:0.8 + 1; }
  [zoom=9] { line-width:1.0 + 1; }
}
#mainroad_line_gen1[type='motorway'] {
  [zoom=10]{ line-width:1.5 + 1.6; }
  [zoom=11]{ line-width:2 + 1.6; }
}
#motorway_line[type='motorway'] {
  [zoom=12]{ line-width:3 + 1.8; }
  [zoom=13]{ line-width:4 + 1.8; }
  [zoom=14]{ line-width:5 + 2; }
  [zoom>14]{ line-width:6 + 2; }
}

#mainroad_fill_gen0[type='motorway'][zoom>6][zoom<=9],
#mainroad_fill_gen1[type='motorway'][zoom>9][zoom<=11],
#motorway_fill[type='motorway'][zoom>11]{
  line-color:@motorway_fill;
  line-cap:round;
  line-join:round;
}
#mainroad_fill_gen0[type='motorway'] {
  [zoom=7] { line-width:0.6; }
  [zoom=8] { line-width:0.8; }
  [zoom=9] { line-width:1.0; }
}
#mainroad_fill_gen1[type='motorway'] {
  [zoom=10]{ line-width:1.5; }
  [zoom=11]{ line-width:2; }
}
#motorway_fill[type='motorway'] {
  [zoom=12]{ line-width:3; }
  [zoom=13]{ line-width:4; }
  [zoom=14]{ line-width:5; }
  [zoom>14]{ line-width:6; }
}

/* ---- Motorway Link --------------------------------------------- */
#mainroad_line_gen0[type='motorway_link'][zoom>6][zoom<=9],
#mainroad_line_gen1[type='motorway_link'][zoom>9][zoom<=11],
#motorway_line[type='motorway_link'][zoom>11]{
  line-color:@motorway_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen0[type='motorway_link'] {
  [zoom=7] { line-width:0.4 + 1; }
  [zoom=8] { line-width:0.6 + 1; }
  [zoom=9] { line-width:0.8 + 1; }
}
#mainroad_line_gen1[type='motorway_link'] {
  [zoom=10]{ line-width:1.0 + 1.6; }
  [zoom=11]{ line-width:1.2 + 1.6; }
}
#motorway_line[type='motorway_link'] {
  [zoom=12]{ line-width:1.6 + 1.8; }
  [zoom=13]{ line-width:2 + 1.8; }
  [zoom=14]{ line-width:3 + 2; }
  [zoom>14]{ line-width:4 + 2; }
}

#mainroad_fill_gen0[type='motorway_link'][zoom>6][zoom<=9],
#mainroad_fill_gen1[type='motorway_link'][zoom>9][zoom<=11],
#motorway_fill[type='motorway_link'][zoom>11]{
  line-color:@motorway_fill;
  line-cap:round;
  line-join:round;
}
#mainroad_fill_gen0[type='motorway_link'] {
  [zoom=7] { line-width:0.4; }
  [zoom=8] { line-width:0.6; }
  [zoom=9] { line-width:0.8; }
}
#mainroad_fill_gen1[type='motorway_link'] {
  [zoom=10]{ line-width:1.0; }
  [zoom=11]{ line-width:1.2; }
}
#motorway_fill[type='motorway_link'] {
  [zoom=12]{ line-width:1.6; }
  [zoom=13]{ line-width:2; }
  [zoom=14]{ line-width:3; }
  [zoom>14]{ line-width:4; }
}

/* ---- Trunk ----------------------------------------------------- */
#mainroad_line_gen0[type='trunk'][zoom>6][zoom<=9],
#mainroad_line_gen1[type='trunk'][zoom>9][zoom<=11],
#motorway_line[type='trunk'][zoom>11]{
  line-color:@trunk_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen0[type='trunk'] {
  [zoom=7] { line-width:0.6 + 1; }
  [zoom=8] { line-width:0.8 + 1; }
  [zoom=9] { line-width:1.0 + 1; }
}
#mainroad_line_gen1[type='trunk'] {
  [zoom=10]{ line-width:1.2 + 1.6; }
  [zoom=11]{ line-width:1.8 + 1.6; }
}
#motorway_line[type='trunk'] {
  [zoom=12]{ line-width:2.5 + 1.8; }
  [zoom=13]{ line-width:3.5 + 1.8; }
  [zoom=14]{ line-width:4.5 + 2; }
  [zoom>14]{ line-width:5.5 + 2; }
}

#mainroad_fill_gen0[type='trunk'][zoom>6][zoom<=9],
#mainroad_fill_gen1[type='trunk'][zoom>9][zoom<=11],
#motorway_fill[type='trunk'][zoom>11]{
  line-color:@trunk_fill;
  line-cap:round;
  line-join:round;
}
#mainroad_fill_fill_gen0[type='trunk'] {
  [zoom=7] { line-width:0.6; }
  [zoom=8] { line-width:0.8; }
  [zoom=9] { line-width:1.0; }
}
#mainroad_fill_fill_gen1[type='trunk'] {
  [zoom=10]{ line-width:1.2; }
  [zoom=11]{ line-width:1.8; }
}
#motorway_fill[type='trunk'] {
  [zoom=12]{ line-width:2.5; }
  [zoom=13]{ line-width:3.5; }  
  [zoom=14]{ line-width:4.5; }
  [zoom>14]{ line-width:5.5; }
}

/* ---- Trunk Link ------------------------------------------------ */
#mainroad_line_gen0[type='trunk_link'][zoom>6][zoom<=9],
#mainroad_line_gen1[type='trunk_link'][zoom>9][zoom<=11],
#motorway_line[type='trunk_link'][zoom>11]{
  line-color:@trunk_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen0[type='trunk_link'] {
  [zoom=7] { line-width:0.4 + 1; }
  [zoom=8] { line-width:0.6 + 1; }
  [zoom=9] { line-width:0.8 + 1; }
}
#mainroad_line_gen1[type='trunk_link'] {
  [zoom=10]{ line-width:1.0 + 1.6; }
  [zoom=11]{ line-width:1.2 + 1.6; }
}
#motorway_line[type='trunk_link'] {
  [zoom=12]{ line-width:1.6 + 1.8; }
  [zoom=13]{ line-width:2 + 1.8; }
  [zoom=14]{ line-width:3 + 2; }
  [zoom>14]{ line-width:4 + 2; }
}

#mainroad_fill_gen0[type='trunk_link'][zoom>6][zoom<=9],
#mainroad_fill_gen1[type='trunk_link'][zoom>9][zoom<=11],
#motorway_fill[type='trunk_link'][zoom>11]{
  line-color:@trunk_fill;
  line-cap:round;
  line-join:round;
}
#mainroad_fill_gen0[type='trunk_link'] {
  [zoom=7] { line-width:0.4; }
  [zoom=8] { line-width:0.6; }
  [zoom=9] { line-width:0.8; }
}
#mainroad_fill_gen1[type='trunk_link'] {
  [zoom=10]{ line-width:1.0; }
  [zoom=11]{ line-width:1.2; }
}
#motorway_fill[type='trunk_link'] {
  [zoom=12]{ line-width:1.6; }
  [zoom=13]{ line-width:2; }  
  [zoom=14]{ line-width:3; }
  [zoom>14]{ line-width:4; }
}

/* ---- Primary --------------------------------------------------- */
#mainroad_line_gen0[type='primary'][zoom>8][zoom<=9],
#mainroad_line_gen1[type='primary'][zoom>9][zoom<=11],
#mainroad_line[type='primary'][zoom>11]{
  line-color:@primary_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen0[type='primary'] {
  [zoom=9] { line-width:0.5 + 1; }
}
#mainroad_line_gen1[type='primary'] {
  [zoom=10]{ line-width:1.0 + 1; }
  [zoom=11]{ line-width:1.4 + 1.6; }
}
#mainroad_line[type='primary'] {
  [zoom=12]{ line-width:2.2 + 1.6; }
  [zoom=13]{ line-width:2.6 + 1.8; }
  [zoom=14]{ line-width:3 + 1.8; }
  [zoom>14]{ line-width:4 + 2; }
}

#mainroad_fill_gen0[type='primary'][zoom>8][zoom<=9],
#mainroad_fill_gen1[type='primary'][zoom>9][zoom<=11],
#mainroad_fill[type='primary'][zoom>11]{
  line-color:@primary_fill;
  line-cap:round;
  line-join:round;
}
#mainroad_fill_gen0[type='primary'] {
  [zoom=9] { line-width:0.5; }
}
#mainroad_fill_gen1[type='primary'] {
  [zoom=10]{ line-width:1.0; }
  [zoom=11]{ line-width:1.4; }
}
#mainroad_fill[type='primary'] {
  [zoom=12]{ line-width:2.2; }
  [zoom=13]{ line-width:2.6; }
  [zoom=14]{ line-width:3; }
  [zoom>14]{ line-width:4; }
}

/* ---- Secondary ------------------------------------------------- */
#mainroad_line_gen1[type='secondary'][zoom>9][zoom<=11],
#mainroad_line[type='secondary'][zoom>11] {
  line-color:@secondary_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen1[type='secondary'] {
  [zoom=10]{ line-width:0.8 + 1; }
  [zoom=11]{ line-width:1.0 + 1.6; }
}
#mainroad_line[type='secondary'] {
  [zoom=12]{ line-width:1.6 + 1.8; }
  [zoom=13]{ line-width:1.8 + 1.8; }
  [zoom=14]{ line-width:2 + 1.8; }
  [zoom>14]{ line-width:3 + 2; }
}

#mainroad_fill_gen1[type='secondary'][zoom>9][zoom<=11],
#mainroad_fill[type='secondary'][zoom>11]{
  line-color:@secondary_fill;
  line-cap:round;
  line-join:round;
}
#mainroad_fill_gen1[type='secondary'] {
  [zoom=10]{ line-width:0.8; }
  [zoom=11]{ line-width:1.0; }
}
#mainroad_fill[type='secondary'] {
  [zoom=12]{ line-width:1.6; }
  [zoom=13]{ line-width:1.8; }
  [zoom=14]{ line-width:2; }
  [zoom>14]{ line-width:3; }
}

/* ---- Tertiary -------------------------------------------------- */
#mainroad_line_gen1[type='tertiary'][zoom>9][zoom<=11],
#mainroad_line[type='tertiary'][zoom>11]{
  line-color:@secondary_line;
  line-cap:round;
  line-join:round;
}
#mainroad_line_gen1[type='tertiary'] {
  [zoom=10]{ line-width:0.8 + 1; }
  [zoom=11]{ line-width:1.0 + 1.6; }
}
#mainroad_line[type='tertiary'] {
  [zoom=12]{ line-width:1.6 + 1.8; }
  [zoom=13]{ line-width:1.8 + 1.8; }
  [zoom=14]{ line-width:2 + 1.8; }
  [zoom>14]{ line-width:3 + 2; }
}

#mainroad_fill_gen1[type='tertiary'][zoom>9][zoom<=11],
#mainroad_fill[type='tertiary'][zoom>11]{
  line-color:@secondary_fill;
  line-cap:round;
  line-join:round;
}
#mainroad_fill_gen1[type='tertiary'] {
  [zoom=10]{ line-width:0.8; }
  [zoom=11]{ line-width:1.0; }
}
#mainroad_fill[type='tertiary'] {
  [zoom=12]{ line-width:1.6; }
  [zoom=13]{ line-width:1.8; }
  [zoom=14]{ line-width:2; }
  [zoom>14]{ line-width:3; }
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
  [zoom=12]{ line-width:0.8; }
  [zoom=13]{ line-width:1.0; }
  [zoom=14]{ line-width:2 + 1.6; }
  [zoom>14]{ line-width:3 + 1.8; }
}
#minorroad_fill[type='living_street'],
#minorroad_fill[type='residential'],
#minorroad_fill[type='road'],
#minorroad_fill[type='service'],
#minorroad_fill[type='unclassified'],
#minorroad_fill[type='unknown'] {
  [zoom>13]{
    line-color:@standard_fill;
    line-cap:round;
    line-join:round;
  }
  [zoom=14]{ line-width:2; }
  [zoom>14]{ line-width:3; }
}

#minorroad_line[type='track'] {
  [zoom>12] {
    line-color:darken(@standard_line,10);
    line-dasharray:2,2;
  }
  [zoom>13] { line-color:#fff; }
}

/* ==== RAILWAY =================================================== */

#rail {
  line-color:@rail;
  line-dasharray:2,2;
}